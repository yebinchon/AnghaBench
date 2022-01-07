
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ring; } ;
struct tbnet {int login_sent; int login_received; int connection_lock; scalar_t__ login_retries; int dev; int xd; TYPE_1__ tx_ring; TYPE_1__ rx_ring; } ;


 int ETIMEDOUT ;
 int TBNET_LOGOUT_RETRIES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_warn (int ,char*) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 int stop_login (struct tbnet*) ;
 int tb_ring_stop (int ) ;
 scalar_t__ tb_xdomain_disable_paths (int ) ;
 int tbnet_free_buffers (TYPE_1__*) ;
 int tbnet_logout_request (struct tbnet*) ;

__attribute__((used)) static void tbnet_tear_down(struct tbnet *net, bool send_logout)
{
 netif_carrier_off(net->dev);
 netif_stop_queue(net->dev);

 stop_login(net);

 mutex_lock(&net->connection_lock);

 if (net->login_sent && net->login_received) {
  int retries = TBNET_LOGOUT_RETRIES;

  while (send_logout && retries-- > 0) {
   int ret = tbnet_logout_request(net);
   if (ret != -ETIMEDOUT)
    break;
  }

  tb_ring_stop(net->rx_ring.ring);
  tb_ring_stop(net->tx_ring.ring);
  tbnet_free_buffers(&net->rx_ring);
  tbnet_free_buffers(&net->tx_ring);

  if (tb_xdomain_disable_paths(net->xd))
   netdev_warn(net->dev, "failed to disable DMA paths\n");
 }

 net->login_retries = 0;
 net->login_sent = 0;
 net->login_received = 0;

 mutex_unlock(&net->connection_lock);
}

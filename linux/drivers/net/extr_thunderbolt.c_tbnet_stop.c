
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ring; } ;
struct TYPE_3__ {int * ring; } ;
struct tbnet {TYPE_2__ tx_ring; TYPE_1__ rx_ring; int disconnect_work; int napi; } ;
struct net_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int napi_disable (int *) ;
 struct tbnet* netdev_priv (struct net_device*) ;
 int tb_ring_free (int *) ;
 int tbnet_tear_down (struct tbnet*,int) ;

__attribute__((used)) static int tbnet_stop(struct net_device *dev)
{
 struct tbnet *net = netdev_priv(dev);

 napi_disable(&net->napi);

 cancel_work_sync(&net->disconnect_work);
 tbnet_tear_down(net, 1);

 tb_ring_free(net->rx_ring.ring);
 net->rx_ring.ring = ((void*)0);
 tb_ring_free(net->tx_ring.ring);
 net->tx_ring.ring = ((void*)0);

 return 0;
}

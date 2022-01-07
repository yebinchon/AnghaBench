
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct iphdr {int dummy; } ;
struct hso_net {int rx_buf_missing; int parent; int flags; int net_lock; scalar_t__ rx_buf_size; int rx_parse_state; int * skb_tx_buf; } ;


 int ENODEV ;
 int HSO_NET_RUNNING ;
 int WAIT_IP ;
 int dev_err (int *,char*) ;
 int hso_start_net_device (int ) ;
 struct hso_net* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hso_net_open(struct net_device *net)
{
 struct hso_net *odev = netdev_priv(net);
 unsigned long flags = 0;

 if (!odev) {
  dev_err(&net->dev, "No net device !\n");
  return -ENODEV;
 }

 odev->skb_tx_buf = ((void*)0);


 spin_lock_irqsave(&odev->net_lock, flags);
 odev->rx_parse_state = WAIT_IP;
 odev->rx_buf_size = 0;
 odev->rx_buf_missing = sizeof(struct iphdr);
 spin_unlock_irqrestore(&odev->net_lock, flags);


 set_bit(HSO_NET_RUNNING, &odev->flags);
 hso_start_net_device(odev->parent);


 netif_start_queue(net);

 return 0;
}

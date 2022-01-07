
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int dummy; } ;
struct ntb_netdev {int tx_timer; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int mod_timer (int *,scalar_t__) ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int ntb_transport_tx_free_entry (struct ntb_transport_qp*) ;
 int smp_mb () ;
 int tx_time ;
 scalar_t__ usecs_to_jiffies (int ) ;

__attribute__((used)) static int __ntb_netdev_maybe_stop_tx(struct net_device *netdev,
          struct ntb_transport_qp *qp, int size)
{
 struct ntb_netdev *dev = netdev_priv(netdev);

 netif_stop_queue(netdev);



 smp_mb();

 if (likely(ntb_transport_tx_free_entry(qp) < size)) {
  mod_timer(&dev->tx_timer, jiffies + usecs_to_jiffies(tx_time));
  return -EBUSY;
 }

 netif_start_queue(netdev);
 return 0;
}

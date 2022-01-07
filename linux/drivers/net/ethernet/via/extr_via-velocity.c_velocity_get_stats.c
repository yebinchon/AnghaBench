
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int * mib_counter; int lock; } ;
struct net_device_stats {int rx_crc_errors; int collisions; int rx_length_errors; int rx_errors; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;


 size_t HW_MIB_ifInRangeLengthErrors ;
 size_t HW_MIB_ifRxAllPkts ;
 size_t HW_MIB_ifRxErrorPkts ;
 size_t HW_MIB_ifRxPktCRCE ;
 size_t HW_MIB_ifTxEtherCollisions ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int velocity_update_hw_mibs (struct velocity_info*) ;

__attribute__((used)) static struct net_device_stats *velocity_get_stats(struct net_device *dev)
{
 struct velocity_info *vptr = netdev_priv(dev);


 if (!netif_running(dev))
  return &dev->stats;

 spin_lock_irq(&vptr->lock);
 velocity_update_hw_mibs(vptr);
 spin_unlock_irq(&vptr->lock);

 dev->stats.rx_packets = vptr->mib_counter[HW_MIB_ifRxAllPkts];
 dev->stats.rx_errors = vptr->mib_counter[HW_MIB_ifRxErrorPkts];
 dev->stats.rx_length_errors = vptr->mib_counter[HW_MIB_ifInRangeLengthErrors];


 dev->stats.collisions = vptr->mib_counter[HW_MIB_ifTxEtherCollisions];



 dev->stats.rx_crc_errors = vptr->mib_counter[HW_MIB_ifRxPktCRCE];







 return &dev->stats;
}

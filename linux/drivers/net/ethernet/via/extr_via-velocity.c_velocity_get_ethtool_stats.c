
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct velocity_info {int lock; int * mib_counter; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int velocity_gstrings ;
 int velocity_update_hw_mibs (struct velocity_info*) ;

__attribute__((used)) static void velocity_get_ethtool_stats(struct net_device *dev,
           struct ethtool_stats *stats, u64 *data)
{
 if (netif_running(dev)) {
  struct velocity_info *vptr = netdev_priv(dev);
  u32 *p = vptr->mib_counter;
  int i;

  spin_lock_irq(&vptr->lock);
  velocity_update_hw_mibs(vptr);
  spin_unlock_irq(&vptr->lock);

  for (i = 0; i < ARRAY_SIZE(velocity_gstrings); i++)
   *data++ = *p++;
 }
}

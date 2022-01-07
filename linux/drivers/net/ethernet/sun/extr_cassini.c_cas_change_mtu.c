
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct cas {int phy_type; int reset_task; int reset_task_pending; int reset_task_pending_mtu; int reset_task_pending_all; } ;


 int CAS_PHY_SERDES ;
 int CAS_RESET_ALL ;
 int CAS_RESET_MTU ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int flush_work (int *) ;
 struct cas* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pr_err (char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int cas_change_mtu(struct net_device *dev, int new_mtu)
{
 struct cas *cp = netdev_priv(dev);

 dev->mtu = new_mtu;
 if (!netif_running(dev) || !netif_device_present(dev))
  return 0;



 atomic_inc(&cp->reset_task_pending);
 if ((cp->phy_type & CAS_PHY_SERDES)) {
  atomic_inc(&cp->reset_task_pending_all);
 } else {
  atomic_inc(&cp->reset_task_pending_mtu);
 }
 schedule_work(&cp->reset_task);







 flush_work(&cp->reset_task);
 return 0;
}

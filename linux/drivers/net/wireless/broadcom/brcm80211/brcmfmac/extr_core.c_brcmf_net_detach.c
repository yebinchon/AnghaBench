
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ reg_state; } ;


 scalar_t__ NETREG_REGISTERED ;
 int brcmf_cfg80211_free_netdev (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static void brcmf_net_detach(struct net_device *ndev, bool rtnl_locked)
{
 if (ndev->reg_state == NETREG_REGISTERED) {
  if (rtnl_locked)
   unregister_netdevice(ndev);
  else
   unregister_netdev(ndev);
 } else {
  brcmf_cfg80211_free_netdev(ndev);
  free_netdev(ndev);
 }
}

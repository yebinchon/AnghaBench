
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tsu; } ;


 int SH_ETH_TSU_CAM_ENTRIES ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 scalar_t__ sh_eth_tsu_disable_cam_entry_post (struct net_device*,int) ;
 int sh_eth_tsu_disable_cam_entry_table (struct net_device*,int) ;

__attribute__((used)) static int sh_eth_tsu_purge_all(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int i, ret;

 if (!mdp->cd->tsu)
  return 0;

 for (i = 0; i < SH_ETH_TSU_CAM_ENTRIES; i++) {
  if (sh_eth_tsu_disable_cam_entry_post(ndev, i))
   continue;


  ret = sh_eth_tsu_disable_cam_entry_table(ndev, i);
  if (ret < 0)
   return ret;
 }

 return 0;
}

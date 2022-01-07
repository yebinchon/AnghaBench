
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tsu; } ;


 struct sh_eth_private* netdev_priv (struct net_device*) ;
 scalar_t__ sh_eth_tsu_disable_cam_entry_post (struct net_device*,int) ;
 int sh_eth_tsu_disable_cam_entry_table (struct net_device*,int) ;
 int sh_eth_tsu_find_entry (struct net_device*,int const*) ;

__attribute__((used)) static int sh_eth_tsu_del_entry(struct net_device *ndev, const u8 *addr)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int i, ret;

 if (!mdp->cd->tsu)
  return 0;

 i = sh_eth_tsu_find_entry(ndev, addr);
 if (i) {

  if (sh_eth_tsu_disable_cam_entry_post(ndev, i))
   goto done;


  ret = sh_eth_tsu_disable_cam_entry_table(ndev, i);
  if (ret < 0)
   return ret;
 }
done:
 return 0;
}

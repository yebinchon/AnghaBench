
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tsu; } ;


 int ENOMEM ;
 int TSU_ADRH0 ;
 int TSU_TEN ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_tsu_enable_cam_entry_post (struct net_device*,int) ;
 int sh_eth_tsu_find_empty (struct net_device*) ;
 int sh_eth_tsu_find_entry (struct net_device*,int const*) ;
 scalar_t__ sh_eth_tsu_get_offset (struct sh_eth_private*,int ) ;
 int sh_eth_tsu_read (struct sh_eth_private*,int ) ;
 int sh_eth_tsu_write (struct sh_eth_private*,int,int ) ;
 int sh_eth_tsu_write_entry (struct net_device*,scalar_t__,int const*) ;

__attribute__((used)) static int sh_eth_tsu_add_entry(struct net_device *ndev, const u8 *addr)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u16 reg_offset = sh_eth_tsu_get_offset(mdp, TSU_ADRH0);
 int i, ret;

 if (!mdp->cd->tsu)
  return 0;

 i = sh_eth_tsu_find_entry(ndev, addr);
 if (i < 0) {

  i = sh_eth_tsu_find_empty(ndev);
  if (i < 0)
   return -ENOMEM;
  ret = sh_eth_tsu_write_entry(ndev, reg_offset + i * 8, addr);
  if (ret < 0)
   return ret;


  sh_eth_tsu_write(mdp, sh_eth_tsu_read(mdp, TSU_TEN) |
     (1 << (31 - i)), TSU_TEN);
 }


 sh_eth_tsu_enable_cam_entry_post(ndev, i);

 return 0;
}

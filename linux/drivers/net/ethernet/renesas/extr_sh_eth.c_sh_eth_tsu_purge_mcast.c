
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tsu; } ;


 int ETH_ALEN ;
 int SH_ETH_TSU_CAM_ENTRIES ;
 int TSU_ADRH0 ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_tsu_del_entry (struct net_device*,int *) ;
 int sh_eth_tsu_get_offset (struct sh_eth_private*,int ) ;
 int sh_eth_tsu_read_entry (struct net_device*,int,int *) ;

__attribute__((used)) static void sh_eth_tsu_purge_mcast(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u16 reg_offset = sh_eth_tsu_get_offset(mdp, TSU_ADRH0);
 u8 addr[ETH_ALEN];
 int i;

 if (!mdp->cd->tsu)
  return;

 for (i = 0; i < SH_ETH_TSU_CAM_ENTRIES; i++, reg_offset += 8) {
  sh_eth_tsu_read_entry(ndev, reg_offset, addr);
  if (is_multicast_ether_addr(addr))
   sh_eth_tsu_del_entry(ndev, addr);
 }
}

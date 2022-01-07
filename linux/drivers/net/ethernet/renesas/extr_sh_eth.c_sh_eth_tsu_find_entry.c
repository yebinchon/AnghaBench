
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sh_eth_private {int dummy; } ;
struct net_device {int dummy; } ;


 int ENOENT ;
 int ETH_ALEN ;
 int SH_ETH_TSU_CAM_ENTRIES ;
 int TSU_ADRH0 ;
 scalar_t__ ether_addr_equal (int const*,int *) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_tsu_get_offset (struct sh_eth_private*,int ) ;
 int sh_eth_tsu_read_entry (struct net_device*,int,int *) ;

__attribute__((used)) static int sh_eth_tsu_find_entry(struct net_device *ndev, const u8 *addr)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u16 reg_offset = sh_eth_tsu_get_offset(mdp, TSU_ADRH0);
 int i;
 u8 c_addr[ETH_ALEN];

 for (i = 0; i < SH_ETH_TSU_CAM_ENTRIES; i++, reg_offset += 8) {
  sh_eth_tsu_read_entry(ndev, reg_offset, c_addr);
  if (ether_addr_equal(addr, c_addr))
   return i;
 }

 return -ENOENT;
}

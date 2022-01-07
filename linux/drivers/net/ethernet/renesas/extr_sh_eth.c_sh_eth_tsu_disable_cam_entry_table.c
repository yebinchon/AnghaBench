
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sh_eth_private {int dummy; } ;
struct net_device {int dummy; } ;
typedef int blank ;


 int ETH_ALEN ;
 int TSU_ADRH0 ;
 int TSU_TEN ;
 int memset (int *,int ,int) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 scalar_t__ sh_eth_tsu_get_offset (struct sh_eth_private*,int ) ;
 int sh_eth_tsu_read (struct sh_eth_private*,int ) ;
 int sh_eth_tsu_write (struct sh_eth_private*,int,int ) ;
 int sh_eth_tsu_write_entry (struct net_device*,scalar_t__,int *) ;

__attribute__((used)) static int sh_eth_tsu_disable_cam_entry_table(struct net_device *ndev,
           int entry)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 u16 reg_offset = sh_eth_tsu_get_offset(mdp, TSU_ADRH0);
 int ret;
 u8 blank[ETH_ALEN];

 sh_eth_tsu_write(mdp, sh_eth_tsu_read(mdp, TSU_TEN) &
    ~(1 << (31 - entry)), TSU_TEN);

 memset(blank, 0, sizeof(blank));
 ret = sh_eth_tsu_write_entry(ndev, reg_offset + entry * 8, blank);
 if (ret < 0)
  return ret;
 return 0;
}

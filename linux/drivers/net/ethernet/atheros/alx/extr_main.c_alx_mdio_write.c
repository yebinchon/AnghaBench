
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int prtad; } ;
struct alx_hw {TYPE_1__ mdio; } ;
struct alx_priv {struct alx_hw hw; } ;


 int EINVAL ;
 int MDIO_DEVAD_NONE ;
 int alx_write_phy_ext (struct alx_hw*,int,int ,int ) ;
 int alx_write_phy_reg (struct alx_hw*,int ,int ) ;
 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int alx_mdio_write(struct net_device *netdev,
     int prtad, int devad, u16 addr, u16 val)
{
 struct alx_priv *alx = netdev_priv(netdev);
 struct alx_hw *hw = &alx->hw;

 if (prtad != hw->mdio.prtad)
  return -EINVAL;

 if (devad == MDIO_DEVAD_NONE)
  return alx_write_phy_reg(hw, addr, val);

 return alx_write_phy_ext(hw, devad, addr, val);
}

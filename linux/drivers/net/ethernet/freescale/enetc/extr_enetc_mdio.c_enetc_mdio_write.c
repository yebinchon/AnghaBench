
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {struct enetc_mdio_priv* priv; } ;
struct enetc_mdio_priv {struct enetc_hw* hw; } ;
struct enetc_hw {int dummy; } ;


 int ENETC_MDC_DIV ;
 int MDIO_ADDR (int) ;
 int MDIO_CFG (int) ;
 int MDIO_CFG_CLKDIV (int ) ;
 int MDIO_CFG_ENC45 ;
 int MDIO_CFG_NEG ;
 int MDIO_CTL (int) ;
 int MDIO_CTL_DEV_ADDR (int) ;
 int MDIO_CTL_PORT_ADDR (int) ;
 int MDIO_DATA (int) ;
 int MII_ADDR_C45 ;
 int enetc_mdio_wait_complete (struct enetc_hw*) ;
 int enetc_mdio_wr (struct enetc_hw*,int (*) (int),int) ;

int enetc_mdio_write(struct mii_bus *bus, int phy_id, int regnum, u16 value)
{
 struct enetc_mdio_priv *mdio_priv = bus->priv;
 struct enetc_hw *hw = mdio_priv->hw;
 u32 mdio_ctl, mdio_cfg;
 u16 dev_addr;
 int ret;

 mdio_cfg = MDIO_CFG_CLKDIV(ENETC_MDC_DIV) | MDIO_CFG_NEG;
 if (regnum & MII_ADDR_C45) {
  dev_addr = (regnum >> 16) & 0x1f;
  mdio_cfg |= MDIO_CFG_ENC45;
 } else {

  dev_addr = regnum & 0x1f;
  mdio_cfg &= ~MDIO_CFG_ENC45;
 }

 enetc_mdio_wr(hw, MDIO_CFG, mdio_cfg);

 ret = enetc_mdio_wait_complete(hw);
 if (ret)
  return ret;


 mdio_ctl = MDIO_CTL_PORT_ADDR(phy_id) | MDIO_CTL_DEV_ADDR(dev_addr);
 enetc_mdio_wr(hw, MDIO_CTL, mdio_ctl);


 if (regnum & MII_ADDR_C45) {
  enetc_mdio_wr(hw, MDIO_ADDR, regnum & 0xffff);

  ret = enetc_mdio_wait_complete(hw);
  if (ret)
   return ret;
 }


 enetc_mdio_wr(hw, MDIO_DATA, MDIO_DATA(value));

 ret = enetc_mdio_wait_complete(hw);
 if (ret)
  return ret;

 return 0;
}

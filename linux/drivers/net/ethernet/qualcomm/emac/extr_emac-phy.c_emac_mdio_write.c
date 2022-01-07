
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {struct emac_adapter* priv; } ;
struct emac_adapter {scalar_t__ base; } ;


 int EIO ;
 scalar_t__ EMAC_MDIO_CTRL ;
 scalar_t__ EMAC_PHY_STS ;
 int MDIO_BUSY ;
 int MDIO_CLK_25_4 ;
 int MDIO_CLK_SEL_BMSK ;
 int MDIO_CLK_SEL_SHFT ;
 int MDIO_DATA_BMSK ;
 int MDIO_DATA_SHFT ;
 int MDIO_REG_ADDR_BMSK ;
 int MDIO_REG_ADDR_SHFT ;
 int MDIO_START ;
 int MDIO_STATUS_DELAY_TIME ;
 int MDIO_WAIT_TIMES ;
 int PHY_ADDR_BMSK ;
 int PHY_ADDR_SHFT ;
 int SUP_PREAMBLE ;
 int emac_reg_update32 (scalar_t__,int ,int) ;
 scalar_t__ readl_poll_timeout (scalar_t__,int,int,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int emac_mdio_write(struct mii_bus *bus, int addr, int regnum, u16 val)
{
 struct emac_adapter *adpt = bus->priv;
 u32 reg;

 emac_reg_update32(adpt->base + EMAC_PHY_STS, PHY_ADDR_BMSK,
     (addr << PHY_ADDR_SHFT));

 reg = SUP_PREAMBLE |
  ((MDIO_CLK_25_4 << MDIO_CLK_SEL_SHFT) & MDIO_CLK_SEL_BMSK) |
  ((regnum << MDIO_REG_ADDR_SHFT) & MDIO_REG_ADDR_BMSK) |
  ((val << MDIO_DATA_SHFT) & MDIO_DATA_BMSK) |
  MDIO_START;

 writel(reg, adpt->base + EMAC_MDIO_CTRL);

 if (readl_poll_timeout(adpt->base + EMAC_MDIO_CTRL, reg,
          !(reg & (MDIO_START | MDIO_BUSY)),
          MDIO_STATUS_DELAY_TIME, MDIO_WAIT_TIMES * 100))
  return -EIO;

 return 0;
}

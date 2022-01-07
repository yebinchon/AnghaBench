
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct atl1e_hw {int dummy; } ;


 int AT_ERR_PHY ;
 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int MDIO_BUSY ;
 int MDIO_CLK_25_4 ;
 int MDIO_CLK_SEL_SHIFT ;
 int MDIO_DATA_MASK ;
 int MDIO_DATA_SHIFT ;
 int MDIO_REG_ADDR_MASK ;
 int MDIO_REG_ADDR_SHIFT ;
 int MDIO_START ;
 int MDIO_SUP_PREAMBLE ;
 int MDIO_WAIT_TIMES ;
 int REG_MDIO_CTRL ;
 int udelay (int) ;
 int wmb () ;

int atl1e_write_phy_reg(struct atl1e_hw *hw, u32 reg_addr, u16 phy_data)
{
 int i;
 u32 val;

 val = ((u32)(phy_data & MDIO_DATA_MASK)) << MDIO_DATA_SHIFT |
        (reg_addr&MDIO_REG_ADDR_MASK) << MDIO_REG_ADDR_SHIFT |
        MDIO_SUP_PREAMBLE |
        MDIO_START |
        MDIO_CLK_25_4 << MDIO_CLK_SEL_SHIFT;

 AT_WRITE_REG(hw, REG_MDIO_CTRL, val);
 wmb();

 for (i = 0; i < MDIO_WAIT_TIMES; i++) {
  udelay(2);
  val = AT_READ_REG(hw, REG_MDIO_CTRL);
  if (!(val & (MDIO_START | MDIO_BUSY)))
   break;
  wmb();
 }

 if (!(val & (MDIO_START | MDIO_BUSY)))
  return 0;

 return AT_ERR_PHY;
}

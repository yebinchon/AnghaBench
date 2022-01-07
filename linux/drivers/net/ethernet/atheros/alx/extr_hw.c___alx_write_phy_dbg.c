
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct alx_hw {int dummy; } ;


 int ALX_MII_DBG_ADDR ;
 int ALX_MII_DBG_DATA ;
 int __alx_write_phy_reg (struct alx_hw*,int ,int ) ;

__attribute__((used)) static int __alx_write_phy_dbg(struct alx_hw *hw, u16 reg, u16 data)
{
 int err;

 err = __alx_write_phy_reg(hw, ALX_MII_DBG_ADDR, reg);
 if (err)
  return err;

 return __alx_write_phy_reg(hw, ALX_MII_DBG_DATA, data);
}

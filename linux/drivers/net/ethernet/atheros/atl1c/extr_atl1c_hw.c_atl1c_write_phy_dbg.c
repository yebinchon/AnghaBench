
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1c_hw {int dummy; } ;


 int MII_DBG_ADDR ;
 int MII_DBG_DATA ;
 int atl1c_write_phy_reg (struct atl1c_hw*,int ,int ) ;
 scalar_t__ unlikely (int) ;

int atl1c_write_phy_dbg(struct atl1c_hw *hw, u16 reg_addr, u16 phy_data)
{
 int err;

 err = atl1c_write_phy_reg(hw, MII_DBG_ADDR, reg_addr);
 if (unlikely(err))
  return err;
 else
  err = atl1c_write_phy_reg(hw, MII_DBG_DATA, phy_data);

 return err;
}

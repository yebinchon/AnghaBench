
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_PHY ;
 int E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP ;
 int EXTCNF_CTRL ;
 scalar_t__ MDIO_OWNERSHIP_TIMEOUT ;
 int e1000_put_hw_semaphore_82573 (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_get_hw_semaphore_82573(struct e1000_hw *hw)
{
 u32 extcnf_ctrl;
 s32 i = 0;

 extcnf_ctrl = er32(EXTCNF_CTRL);
 do {
  extcnf_ctrl |= E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP;
  ew32(EXTCNF_CTRL, extcnf_ctrl);
  extcnf_ctrl = er32(EXTCNF_CTRL);

  if (extcnf_ctrl & E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP)
   break;

  usleep_range(2000, 4000);
  i++;
 } while (i < MDIO_OWNERSHIP_TIMEOUT);

 if (i == MDIO_OWNERSHIP_TIMEOUT) {

  e1000_put_hw_semaphore_82573(hw);
  e_dbg("Driver can't access the PHY\n");
  return -E1000_ERR_PHY;
 }

 return 0;
}

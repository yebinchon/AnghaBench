
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct igc_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct igc_hw*,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IGC_MMDAAD ;
 int IGC_MMDAC ;
 int IGC_MMDAC_FUNC_DATA ;
 scalar_t__ stub1 (struct igc_hw*,int ,int) ;
 scalar_t__ stub2 (struct igc_hw*,int ,int) ;
 scalar_t__ stub3 (struct igc_hw*,int ,int) ;
 scalar_t__ stub4 (struct igc_hw*,int ,int*) ;
 scalar_t__ stub5 (struct igc_hw*,int ,int) ;
 scalar_t__ stub6 (struct igc_hw*,int ,int) ;

__attribute__((used)) static s32 __igc_access_xmdio_reg(struct igc_hw *hw, u16 address,
      u8 dev_addr, u16 *data, bool read)
{
 s32 ret_val;

 ret_val = hw->phy.ops.write_reg(hw, IGC_MMDAC, dev_addr);
 if (ret_val)
  return ret_val;

 ret_val = hw->phy.ops.write_reg(hw, IGC_MMDAAD, address);
 if (ret_val)
  return ret_val;

 ret_val = hw->phy.ops.write_reg(hw, IGC_MMDAC, IGC_MMDAC_FUNC_DATA |
     dev_addr);
 if (ret_val)
  return ret_val;

 if (read)
  ret_val = hw->phy.ops.read_reg(hw, IGC_MMDAAD, data);
 else
  ret_val = hw->phy.ops.write_reg(hw, IGC_MMDAAD, *data);
 if (ret_val)
  return ret_val;


 ret_val = hw->phy.ops.write_reg(hw, IGC_MMDAC, 0);
 if (ret_val)
  return ret_val;

 return ret_val;
}

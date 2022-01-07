
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_read_reg (struct aq_hw_s*,scalar_t__) ;

u64 aq_hw_read_reg64(struct aq_hw_s *hw, u32 reg)
{
 u64 value = aq_hw_read_reg(hw, reg);

 value |= (u64)aq_hw_read_reg(hw, reg + 4) << 32;
 return value;
}

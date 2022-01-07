
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_read_reg (struct aq_hw_s*,int) ;
 int aq_hw_write_reg (struct aq_hw_s*,int,int) ;

void aq_hw_write_reg_bit(struct aq_hw_s *aq_hw, u32 addr, u32 msk,
    u32 shift, u32 val)
{
 if (msk ^ ~0) {
  u32 reg_old, reg_new;

  reg_old = aq_hw_read_reg(aq_hw, addr);
  reg_new = (reg_old & (~msk)) | (val << shift);

  if (reg_old != reg_new)
   aq_hw_write_reg(aq_hw, addr, reg_new);
 } else {
  aq_hw_write_reg(aq_hw, addr, val);
 }
}

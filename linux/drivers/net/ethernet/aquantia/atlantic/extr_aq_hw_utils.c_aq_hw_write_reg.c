
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct aq_hw_s {scalar_t__ mmio; } ;


 int writel (scalar_t__,scalar_t__) ;

void aq_hw_write_reg(struct aq_hw_s *hw, u32 reg, u32 value)
{
 writel(value, hw->mmio + reg);
}

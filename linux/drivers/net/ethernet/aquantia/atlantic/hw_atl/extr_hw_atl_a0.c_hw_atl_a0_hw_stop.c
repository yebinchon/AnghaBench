
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {int dummy; } ;


 int HW_ATL_A0_INT_MASK ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_a0_hw_irq_disable (struct aq_hw_s*,int ) ;

__attribute__((used)) static int hw_atl_a0_hw_stop(struct aq_hw_s *self)
{
 hw_atl_a0_hw_irq_disable(self, HW_ATL_A0_INT_MASK);
 return aq_hw_err_from_flags(self);
}

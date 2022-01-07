
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_itr_irq_statuslsw_get (struct aq_hw_s*) ;

__attribute__((used)) static int hw_atl_b0_hw_irq_read(struct aq_hw_s *self, u64 *mask)
{
 *mask = hw_atl_itr_irq_statuslsw_get(self);
 return aq_hw_err_from_flags(self);
}

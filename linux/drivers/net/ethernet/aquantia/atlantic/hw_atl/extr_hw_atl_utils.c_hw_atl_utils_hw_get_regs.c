
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;
struct aq_hw_caps_s {unsigned int mac_regs_count; } ;


 int aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int * hw_atl_utils_hw_mac_regs ;

int hw_atl_utils_hw_get_regs(struct aq_hw_s *self,
        const struct aq_hw_caps_s *aq_hw_caps,
        u32 *regs_buff)
{
 unsigned int i = 0U;

 for (i = 0; i < aq_hw_caps->mac_regs_count; i++)
  regs_buff[i] = aq_hw_read_reg(self,
           hw_atl_utils_hw_mac_regs[i]);
 return 0;
}

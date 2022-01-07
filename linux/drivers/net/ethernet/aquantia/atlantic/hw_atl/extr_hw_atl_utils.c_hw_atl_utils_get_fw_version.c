
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_read_reg (struct aq_hw_s*,int) ;

int hw_atl_utils_get_fw_version(struct aq_hw_s *self, u32 *fw_version)
{
 *fw_version = aq_hw_read_reg(self, 0x18U);
 return 0;
}

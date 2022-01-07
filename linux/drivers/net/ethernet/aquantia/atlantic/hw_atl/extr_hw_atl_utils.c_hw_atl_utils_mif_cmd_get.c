
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_MIF_CMD ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;

__attribute__((used)) static u32 hw_atl_utils_mif_cmd_get(struct aq_hw_s *self)
{
 return aq_hw_read_reg(self, HW_ATL_MIF_CMD);
}

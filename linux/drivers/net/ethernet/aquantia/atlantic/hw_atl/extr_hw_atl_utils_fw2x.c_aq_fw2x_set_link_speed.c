
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_FW2X_MPI_CONTROL_ADDR ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;
 int link_speed_mask_2fw2x_ratemask (int ) ;

__attribute__((used)) static int aq_fw2x_set_link_speed(struct aq_hw_s *self, u32 speed)
{
 u32 val = link_speed_mask_2fw2x_ratemask(speed);

 aq_hw_write_reg(self, HW_ATL_FW2X_MPI_CONTROL_ADDR, val);

 return 0;
}

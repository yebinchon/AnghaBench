
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_MPI_CONTROL_ADR ;
 int HW_ATL_MPI_SPEED_MSK ;
 int HW_ATL_MPI_SPEED_SHIFT ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int) ;

__attribute__((used)) static int hw_atl_utils_mpi_set_speed(struct aq_hw_s *self, u32 speed)
{
 u32 val = aq_hw_read_reg(self, HW_ATL_MPI_CONTROL_ADR);

 val = val & ~HW_ATL_MPI_SPEED_MSK;
 val |= speed << HW_ATL_MPI_SPEED_SHIFT;
 aq_hw_write_reg(self, HW_ATL_MPI_CONTROL_ADR, val);

 return 0;
}

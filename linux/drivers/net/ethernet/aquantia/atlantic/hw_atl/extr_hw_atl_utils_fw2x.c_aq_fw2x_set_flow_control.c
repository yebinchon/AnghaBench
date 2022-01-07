
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_FW2X_MPI_CONTROL2_ADDR ;
 int aq_fw2x_set_mpi_flow_control (struct aq_hw_s*,int *) ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

__attribute__((used)) static int aq_fw2x_set_flow_control(struct aq_hw_s *self)
{
 u32 mpi_state = aq_hw_read_reg(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR);

 aq_fw2x_set_mpi_flow_control(self, &mpi_state);

 aq_hw_write_reg(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR, mpi_state);

 return 0;
}

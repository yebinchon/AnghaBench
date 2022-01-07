
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int BIT (int ) ;
 int CTRL_FORCE_RECONNECT ;
 int HW_ATL_FW2X_MPI_CONTROL2_ADDR ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

__attribute__((used)) static int aq_fw2x_renegotiate(struct aq_hw_s *self)
{
 u32 mpi_opts = aq_hw_read_reg(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR);

 mpi_opts |= BIT(CTRL_FORCE_RECONNECT);

 aq_hw_write_reg(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR, mpi_opts);

 return 0;
}

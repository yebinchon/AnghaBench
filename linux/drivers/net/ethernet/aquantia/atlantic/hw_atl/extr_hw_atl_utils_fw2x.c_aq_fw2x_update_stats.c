
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int BIT (int ) ;
 int CAPS_HI_STATISTICS ;
 int HW_ATL_FW2X_MPI_CONTROL2_ADDR ;
 int aq_fw2x_state2_get ;
 int aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int) ;
 int hw_atl_utils_update_stats (struct aq_hw_s*) ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int aq_fw2x_update_stats(struct aq_hw_s *self)
{
 int err = 0;
 u32 mpi_opts = aq_hw_read_reg(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR);
 u32 orig_stats_val = mpi_opts & BIT(CAPS_HI_STATISTICS);
 u32 stats_val;


 mpi_opts = mpi_opts ^ BIT(CAPS_HI_STATISTICS);
 aq_hw_write_reg(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR, mpi_opts);


 err = readx_poll_timeout_atomic(aq_fw2x_state2_get,
     self, stats_val,
     orig_stats_val != (stats_val &
     BIT(CAPS_HI_STATISTICS)),
     1U, 10000U);
 if (err)
  return err;

 return hw_atl_utils_update_stats(self);
}

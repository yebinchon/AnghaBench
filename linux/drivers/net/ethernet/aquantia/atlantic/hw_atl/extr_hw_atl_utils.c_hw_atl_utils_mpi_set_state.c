
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hw_atl_utils_mbox_header {scalar_t__ transaction_id; } ;
struct aq_hw_s {int dummy; } ;
typedef enum hal_atl_utils_fw_state_e { ____Placeholder_hal_atl_utils_fw_state_e } hal_atl_utils_fw_state_e ;


 int HW_ATL_MPI_CONTROL_ADR ;
 scalar_t__ HW_ATL_MPI_DIRTY_WAKE_MSK ;
 scalar_t__ HW_ATL_MPI_STATE_MSK ;
 int MPI_DEINIT ;
 int MPI_POWER ;
 int MPI_RESET ;
 scalar_t__ aq_hw_read_reg (struct aq_hw_s*,int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,scalar_t__) ;
 int hw_atl_utils_get_mpi_mbox_tid ;
 int hw_atl_utils_mpi_read_mbox (struct aq_hw_s*,struct hw_atl_utils_mbox_header*) ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,scalar_t__,int,unsigned int,unsigned int) ;

__attribute__((used)) static int hw_atl_utils_mpi_set_state(struct aq_hw_s *self,
          enum hal_atl_utils_fw_state_e state)
{
 int err = 0;
 u32 transaction_id = 0;
 struct hw_atl_utils_mbox_header mbox;
 u32 val = aq_hw_read_reg(self, HW_ATL_MPI_CONTROL_ADR);

 if (state == MPI_RESET) {
  hw_atl_utils_mpi_read_mbox(self, &mbox);

  transaction_id = mbox.transaction_id;

  err = readx_poll_timeout_atomic(hw_atl_utils_get_mpi_mbox_tid,
      self, mbox.transaction_id,
      transaction_id !=
      mbox.transaction_id,
      1000U, 100000U);
  if (err < 0)
   goto err_exit;
 }



 if (state == MPI_DEINIT || state == MPI_POWER)
  val |= HW_ATL_MPI_DIRTY_WAKE_MSK;
 else
  val &= ~HW_ATL_MPI_DIRTY_WAKE_MSK;


 val = val & ~HW_ATL_MPI_STATE_MSK;
 val |= state & HW_ATL_MPI_STATE_MSK;

 aq_hw_write_reg(self, HW_ATL_MPI_CONTROL_ADR, val);
err_exit:
 return err;
}

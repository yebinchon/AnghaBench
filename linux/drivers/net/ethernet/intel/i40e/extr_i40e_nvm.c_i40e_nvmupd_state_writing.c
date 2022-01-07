
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct i40e_nvm_access {int dummy; } ;
struct TYPE_4__ {scalar_t__ asq_last_status; } ;
struct TYPE_3__ {scalar_t__ hw_semaphore_timeout; } ;
struct i40e_hw {int nvm_release_on_done; TYPE_2__ aq; TYPE_1__ nvm; void* nvmupd_state; void* nvm_wait_opcode; } ;
typedef scalar_t__ i40e_status ;
typedef enum i40e_nvmupd_cmd { ____Placeholder_i40e_nvmupd_cmd } i40e_nvmupd_cmd ;


 int EIO ;
 int ESRCH ;
 scalar_t__ I40E_AQ_RC_EBUSY ;
 int I40E_DEBUG_ALL ;
 int I40E_DEBUG_NVM ;
 int I40E_GLVFGEN_TIMER ;
 scalar_t__ I40E_NOT_SUPPORTED ;


 void* I40E_NVMUPD_STATE_INIT ;
 void* I40E_NVMUPD_STATE_INIT_WAIT ;
 void* I40E_NVMUPD_STATE_WRITE_WAIT ;


 int I40E_RESOURCE_WRITE ;
 scalar_t__ i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_aq_rc_to_posix (scalar_t__,scalar_t__) ;
 void* i40e_aqc_opc_nvm_update ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__,...) ;
 scalar_t__* i40e_nvm_update_state_str ;
 scalar_t__ i40e_nvmupd_nvm_write (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_nvmupd_validate_command (struct i40e_hw*,struct i40e_nvm_access*,int*) ;
 int i40e_release_nvm (struct i40e_hw*) ;
 scalar_t__ i40e_update_nvm_checksum (struct i40e_hw*) ;
 scalar_t__ rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static i40e_status i40e_nvmupd_state_writing(struct i40e_hw *hw,
          struct i40e_nvm_access *cmd,
          u8 *bytes, int *perrno)
{
 i40e_status status = 0;
 enum i40e_nvmupd_cmd upd_cmd;
 bool retry_attempt = 0;

 upd_cmd = i40e_nvmupd_validate_command(hw, cmd, perrno);

retry:
 switch (upd_cmd) {
 case 129:
  status = i40e_nvmupd_nvm_write(hw, cmd, bytes, perrno);
  if (!status) {
   hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
   hw->nvmupd_state = I40E_NVMUPD_STATE_WRITE_WAIT;
  }
  break;

 case 128:
  status = i40e_nvmupd_nvm_write(hw, cmd, bytes, perrno);
  if (status) {
   *perrno = hw->aq.asq_last_status ?
       i40e_aq_rc_to_posix(status,
             hw->aq.asq_last_status) :
       -EIO;
   hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;
  } else {
   hw->nvm_release_on_done = 1;
   hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
   hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
  }
  break;

 case 131:

  status = i40e_update_nvm_checksum(hw);
  if (status) {
   *perrno = hw->aq.asq_last_status ?
       i40e_aq_rc_to_posix(status,
             hw->aq.asq_last_status) :
       -EIO;
   hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;
  } else {
   hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
   hw->nvmupd_state = I40E_NVMUPD_STATE_WRITE_WAIT;
  }
  break;

 case 130:

  status = i40e_update_nvm_checksum(hw);
  if (status) {
   *perrno = hw->aq.asq_last_status ?
       i40e_aq_rc_to_posix(status,
             hw->aq.asq_last_status) :
       -EIO;
   hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;
  } else {
   hw->nvm_release_on_done = 1;
   hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
   hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
  }
  break;

 default:
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVMUPD: bad cmd %s in writing state.\n",
      i40e_nvm_update_state_str[upd_cmd]);
  status = I40E_NOT_SUPPORTED;
  *perrno = -ESRCH;
  break;
 }







 if (status && (hw->aq.asq_last_status == I40E_AQ_RC_EBUSY) &&
     !retry_attempt) {
  i40e_status old_status = status;
  u32 old_asq_status = hw->aq.asq_last_status;
  u32 gtime;

  gtime = rd32(hw, I40E_GLVFGEN_TIMER);
  if (gtime >= hw->nvm.hw_semaphore_timeout) {
   i40e_debug(hw, I40E_DEBUG_ALL,
       "NVMUPD: write semaphore expired (%d >= %lld), retrying\n",
       gtime, hw->nvm.hw_semaphore_timeout);
   i40e_release_nvm(hw);
   status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
   if (status) {
    i40e_debug(hw, I40E_DEBUG_ALL,
        "NVMUPD: write semaphore reacquire failed aq_err = %d\n",
        hw->aq.asq_last_status);
    status = old_status;
    hw->aq.asq_last_status = old_asq_status;
   } else {
    retry_attempt = 1;
    goto retry;
   }
  }
 }

 return status;
}

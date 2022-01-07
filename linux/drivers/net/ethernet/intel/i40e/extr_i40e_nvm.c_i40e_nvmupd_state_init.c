
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i40e_nvm_access {int dummy; } ;
struct TYPE_2__ {int asq_last_status; } ;
struct i40e_hw {int nvm_release_on_done; void* nvmupd_state; void* nvm_wait_opcode; TYPE_1__ aq; } ;
typedef int i40e_status ;
typedef enum i40e_nvmupd_cmd { ____Placeholder_i40e_nvmupd_cmd } i40e_nvmupd_cmd ;


 int EIO ;
 int ESRCH ;
 int I40E_DEBUG_NVM ;
 int I40E_ERR_NVM ;






 void* I40E_NVMUPD_STATE_INIT_WAIT ;
 void* I40E_NVMUPD_STATE_READING ;
 void* I40E_NVMUPD_STATE_WRITE_WAIT ;



 int I40E_RESOURCE_READ ;
 int I40E_RESOURCE_WRITE ;
 int i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_aq_rc_to_posix (int ,int ) ;
 void* i40e_aqc_opc_nvm_erase ;
 void* i40e_aqc_opc_nvm_update ;
 int i40e_debug (struct i40e_hw*,int ,char*,int ) ;
 int * i40e_nvm_update_state_str ;
 int i40e_nvmupd_exec_aq (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_nvmupd_get_aq_event (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_nvmupd_get_aq_result (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_nvmupd_nvm_erase (struct i40e_hw*,struct i40e_nvm_access*,int*) ;
 int i40e_nvmupd_nvm_read (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_nvmupd_nvm_write (struct i40e_hw*,struct i40e_nvm_access*,int *,int*) ;
 int i40e_nvmupd_validate_command (struct i40e_hw*,struct i40e_nvm_access*,int*) ;
 int i40e_release_nvm (struct i40e_hw*) ;
 int i40e_update_nvm_checksum (struct i40e_hw*) ;

__attribute__((used)) static i40e_status i40e_nvmupd_state_init(struct i40e_hw *hw,
       struct i40e_nvm_access *cmd,
       u8 *bytes, int *perrno)
{
 i40e_status status = 0;
 enum i40e_nvmupd_cmd upd_cmd;

 upd_cmd = i40e_nvmupd_validate_command(hw, cmd, perrno);

 switch (upd_cmd) {
 case 132:
  status = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
  if (status) {
   *perrno = i40e_aq_rc_to_posix(status,
           hw->aq.asq_last_status);
  } else {
   status = i40e_nvmupd_nvm_read(hw, cmd, bytes, perrno);
   i40e_release_nvm(hw);
  }
  break;

 case 131:
  status = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
  if (status) {
   *perrno = i40e_aq_rc_to_posix(status,
           hw->aq.asq_last_status);
  } else {
   status = i40e_nvmupd_nvm_read(hw, cmd, bytes, perrno);
   if (status)
    i40e_release_nvm(hw);
   else
    hw->nvmupd_state = I40E_NVMUPD_STATE_READING;
  }
  break;

 case 130:
  status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
  if (status) {
   *perrno = i40e_aq_rc_to_posix(status,
           hw->aq.asq_last_status);
  } else {
   status = i40e_nvmupd_nvm_erase(hw, cmd, perrno);
   if (status) {
    i40e_release_nvm(hw);
   } else {
    hw->nvm_release_on_done = 1;
    hw->nvm_wait_opcode = i40e_aqc_opc_nvm_erase;
    hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
   }
  }
  break;

 case 129:
  status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
  if (status) {
   *perrno = i40e_aq_rc_to_posix(status,
           hw->aq.asq_last_status);
  } else {
   status = i40e_nvmupd_nvm_write(hw, cmd, bytes, perrno);
   if (status) {
    i40e_release_nvm(hw);
   } else {
    hw->nvm_release_on_done = 1;
    hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
    hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
   }
  }
  break;

 case 128:
  status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
  if (status) {
   *perrno = i40e_aq_rc_to_posix(status,
           hw->aq.asq_last_status);
  } else {
   status = i40e_nvmupd_nvm_write(hw, cmd, bytes, perrno);
   if (status) {
    i40e_release_nvm(hw);
   } else {
    hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
    hw->nvmupd_state = I40E_NVMUPD_STATE_WRITE_WAIT;
   }
  }
  break;

 case 136:
  status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
  if (status) {
   *perrno = i40e_aq_rc_to_posix(status,
           hw->aq.asq_last_status);
  } else {
   status = i40e_update_nvm_checksum(hw);
   if (status) {
    *perrno = hw->aq.asq_last_status ?
       i40e_aq_rc_to_posix(status,
             hw->aq.asq_last_status) :
       -EIO;
    i40e_release_nvm(hw);
   } else {
    hw->nvm_release_on_done = 1;
    hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
    hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
   }
  }
  break;

 case 135:
  status = i40e_nvmupd_exec_aq(hw, cmd, bytes, perrno);
  break;

 case 133:
  status = i40e_nvmupd_get_aq_result(hw, cmd, bytes, perrno);
  break;

 case 134:
  status = i40e_nvmupd_get_aq_event(hw, cmd, bytes, perrno);
  break;

 default:
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVMUPD: bad cmd %s in init state\n",
      i40e_nvm_update_state_str[upd_cmd]);
  status = I40E_ERR_NVM;
  *perrno = -ESRCH;
  break;
 }
 return status;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct i40e_nvm_access {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {int nvm_release_on_done; void* nvmupd_state; void* nvm_wait_opcode; TYPE_1__ aq; } ;
typedef  int /*<<< orphan*/  i40e_status ;
typedef  enum i40e_nvmupd_cmd { ____Placeholder_i40e_nvmupd_cmd } i40e_nvmupd_cmd ;

/* Variables and functions */
 int EIO ; 
 int ESRCH ; 
 int /*<<< orphan*/  I40E_DEBUG_NVM ; 
 int /*<<< orphan*/  I40E_ERR_NVM ; 
#define  I40E_NVMUPD_CSUM_SA 136 
#define  I40E_NVMUPD_EXEC_AQ 135 
#define  I40E_NVMUPD_GET_AQ_EVENT 134 
#define  I40E_NVMUPD_GET_AQ_RESULT 133 
#define  I40E_NVMUPD_READ_SA 132 
#define  I40E_NVMUPD_READ_SNT 131 
 void* I40E_NVMUPD_STATE_INIT_WAIT ; 
 void* I40E_NVMUPD_STATE_READING ; 
 void* I40E_NVMUPD_STATE_WRITE_WAIT ; 
#define  I40E_NVMUPD_WRITE_ERA 130 
#define  I40E_NVMUPD_WRITE_SA 129 
#define  I40E_NVMUPD_WRITE_SNT 128 
 int /*<<< orphan*/  I40E_RESOURCE_READ ; 
 int /*<<< orphan*/  I40E_RESOURCE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* i40e_aqc_opc_nvm_erase ; 
 void* i40e_aqc_opc_nvm_update ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * i40e_nvm_update_state_str ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,struct i40e_nvm_access*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,struct i40e_nvm_access*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,struct i40e_nvm_access*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,struct i40e_nvm_access*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,struct i40e_nvm_access*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,struct i40e_nvm_access*,int /*<<< orphan*/ *,int*) ; 
 int FUNC9 (struct i40e_hw*,struct i40e_nvm_access*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_hw*) ; 

__attribute__((used)) static i40e_status FUNC12(struct i40e_hw *hw,
					  struct i40e_nvm_access *cmd,
					  u8 *bytes, int *perrno)
{
	i40e_status status = 0;
	enum i40e_nvmupd_cmd upd_cmd;

	upd_cmd = FUNC9(hw, cmd, perrno);

	switch (upd_cmd) {
	case I40E_NVMUPD_READ_SA:
		status = FUNC0(hw, I40E_RESOURCE_READ);
		if (status) {
			*perrno = FUNC1(status,
						     hw->aq.asq_last_status);
		} else {
			status = FUNC7(hw, cmd, bytes, perrno);
			FUNC10(hw);
		}
		break;

	case I40E_NVMUPD_READ_SNT:
		status = FUNC0(hw, I40E_RESOURCE_READ);
		if (status) {
			*perrno = FUNC1(status,
						     hw->aq.asq_last_status);
		} else {
			status = FUNC7(hw, cmd, bytes, perrno);
			if (status)
				FUNC10(hw);
			else
				hw->nvmupd_state = I40E_NVMUPD_STATE_READING;
		}
		break;

	case I40E_NVMUPD_WRITE_ERA:
		status = FUNC0(hw, I40E_RESOURCE_WRITE);
		if (status) {
			*perrno = FUNC1(status,
						     hw->aq.asq_last_status);
		} else {
			status = FUNC6(hw, cmd, perrno);
			if (status) {
				FUNC10(hw);
			} else {
				hw->nvm_release_on_done = true;
				hw->nvm_wait_opcode = i40e_aqc_opc_nvm_erase;
				hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
			}
		}
		break;

	case I40E_NVMUPD_WRITE_SA:
		status = FUNC0(hw, I40E_RESOURCE_WRITE);
		if (status) {
			*perrno = FUNC1(status,
						     hw->aq.asq_last_status);
		} else {
			status = FUNC8(hw, cmd, bytes, perrno);
			if (status) {
				FUNC10(hw);
			} else {
				hw->nvm_release_on_done = true;
				hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
				hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
			}
		}
		break;

	case I40E_NVMUPD_WRITE_SNT:
		status = FUNC0(hw, I40E_RESOURCE_WRITE);
		if (status) {
			*perrno = FUNC1(status,
						     hw->aq.asq_last_status);
		} else {
			status = FUNC8(hw, cmd, bytes, perrno);
			if (status) {
				FUNC10(hw);
			} else {
				hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
				hw->nvmupd_state = I40E_NVMUPD_STATE_WRITE_WAIT;
			}
		}
		break;

	case I40E_NVMUPD_CSUM_SA:
		status = FUNC0(hw, I40E_RESOURCE_WRITE);
		if (status) {
			*perrno = FUNC1(status,
						     hw->aq.asq_last_status);
		} else {
			status = FUNC11(hw);
			if (status) {
				*perrno = hw->aq.asq_last_status ?
				   FUNC1(status,
						       hw->aq.asq_last_status) :
				   -EIO;
				FUNC10(hw);
			} else {
				hw->nvm_release_on_done = true;
				hw->nvm_wait_opcode = i40e_aqc_opc_nvm_update;
				hw->nvmupd_state = I40E_NVMUPD_STATE_INIT_WAIT;
			}
		}
		break;

	case I40E_NVMUPD_EXEC_AQ:
		status = FUNC3(hw, cmd, bytes, perrno);
		break;

	case I40E_NVMUPD_GET_AQ_RESULT:
		status = FUNC5(hw, cmd, bytes, perrno);
		break;

	case I40E_NVMUPD_GET_AQ_EVENT:
		status = FUNC4(hw, cmd, bytes, perrno);
		break;

	default:
		FUNC2(hw, I40E_DEBUG_NVM,
			   "NVMUPD: bad cmd %s in init state\n",
			   i40e_nvm_update_state_str[upd_cmd]);
		status = I40E_ERR_NVM;
		*perrno = -ESRCH;
		break;
	}
	return status;
}
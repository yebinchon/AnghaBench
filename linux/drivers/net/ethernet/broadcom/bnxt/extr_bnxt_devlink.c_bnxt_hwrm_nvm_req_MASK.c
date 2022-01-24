#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union devlink_param_value {int dummy; } devlink_param_value ;
typedef  union bnxt_nvm_data {int dummy; } bnxt_nvm_data ;
typedef  scalar_t__ u32 ;
struct hwrm_nvm_get_variable_input {void* req_type; void* dimensions; void* index_0; void* option_num; void* data_len; int /*<<< orphan*/  dest_data_addr; } ;
struct bnxt_dl_nvm_param {scalar_t__ id; scalar_t__ dir_type; int nvm_num_bits; int offset; int /*<<< orphan*/  dl_num_bytes; } ;
struct TYPE_3__ {int port_id; int fw_fid; } ;
struct bnxt {int /*<<< orphan*/  dev; TYPE_2__* pdev; TYPE_1__ pf; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt_dl_nvm_param*) ; 
 int BNXT_FIRST_PF_FID ; 
 scalar_t__ BNXT_NVM_FUNC_CFG ; 
 scalar_t__ BNXT_NVM_PORT_CFG ; 
 scalar_t__ FUNC1 (struct bnxt*) ; 
 int EACCES ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int HWRM_NVM_SET_VARIABLE ; 
 int /*<<< orphan*/  FUNC2 (union devlink_param_value*,union bnxt_nvm_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union bnxt_nvm_data*,union devlink_param_value*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 union bnxt_nvm_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,union bnxt_nvm_data*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct bnxt*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct bnxt*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 struct bnxt_dl_nvm_param* nvm_params ; 

__attribute__((used)) static int FUNC11(struct bnxt *bp, u32 param_id, void *msg,
			     int msg_len, union devlink_param_value *val)
{
	struct hwrm_nvm_get_variable_input *req = msg;
	struct bnxt_dl_nvm_param nvm_param;
	union bnxt_nvm_data *data;
	dma_addr_t data_dma_addr;
	int idx = 0, rc, i;

	/* Get/Set NVM CFG parameter is supported only on PFs */
	if (FUNC1(bp))
		return -EPERM;

	for (i = 0; i < FUNC0(nvm_params); i++) {
		if (nvm_params[i].id == param_id) {
			nvm_param = nvm_params[i];
			break;
		}
	}

	if (i == FUNC0(nvm_params))
		return -EOPNOTSUPP;

	if (nvm_param.dir_type == BNXT_NVM_PORT_CFG)
		idx = bp->pf.port_id;
	else if (nvm_param.dir_type == BNXT_NVM_FUNC_CFG)
		idx = bp->pf.fw_fid - BNXT_FIRST_PF_FID;

	data = FUNC6(&bp->pdev->dev, sizeof(*data),
				  &data_dma_addr, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	req->dest_data_addr = FUNC5(data_dma_addr);
	req->data_len = FUNC4(nvm_param.nvm_num_bits);
	req->option_num = FUNC4(nvm_param.offset);
	req->index_0 = FUNC4(idx);
	if (idx)
		req->dimensions = FUNC4(1);

	if (req->req_type == FUNC4(HWRM_NVM_SET_VARIABLE)) {
		FUNC3(data, val, nvm_param.nvm_num_bits,
				      nvm_param.dl_num_bytes);
		rc = FUNC8(bp, msg, msg_len, HWRM_CMD_TIMEOUT);
	} else {
		rc = FUNC9(bp, msg, msg_len,
					      HWRM_CMD_TIMEOUT);
		if (!rc)
			FUNC2(val, data,
						nvm_param.nvm_num_bits,
						nvm_param.dl_num_bytes);
	}
	FUNC7(&bp->pdev->dev, sizeof(*data), data, data_dma_addr);
	if (rc == -EACCES)
		FUNC10(bp->dev, "PF does not have admin privileges to modify NVM config\n");
	return rc;
}
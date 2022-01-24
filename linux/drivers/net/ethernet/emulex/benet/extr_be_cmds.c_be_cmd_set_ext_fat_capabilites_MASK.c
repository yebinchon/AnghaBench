#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct be_mcc_wrb {int dummy; } ;
struct be_fat_conf_params {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  size; struct be_cmd_req_set_ext_fat_caps* va; } ;
struct be_cmd_req_set_ext_fat_caps {int /*<<< orphan*/  hdr; int /*<<< orphan*/  set_params; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_EXT_FAT_CAPABILITIES ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct be_fat_conf_params*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC5 (struct be_adapter*) ; 

int FUNC6(struct be_adapter *adapter,
				   struct be_dma_mem *cmd,
				   struct be_fat_conf_params *configs)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_ext_fat_caps *req;
	int status;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC5(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = cmd->va;
	FUNC2(&req->set_params, configs, sizeof(struct be_fat_conf_params));
	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_EXT_FAT_CAPABILITIES,
			       cmd->size, wrb, cmd);

	status = FUNC0(adapter);
err:
	FUNC4(&adapter->mcc_lock);
	return status;
}
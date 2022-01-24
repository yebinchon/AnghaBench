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
struct be_dma_mem {int /*<<< orphan*/  size; struct be_cmd_req_get_ext_fat_caps* va; } ;
struct be_cmd_req_get_ext_fat_caps {int /*<<< orphan*/  parameter_type; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mbox_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter,
				   struct be_dma_mem *cmd)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_ext_fat_caps *req;
	int status;

	if (!FUNC0(adapter, OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES,
			    CMD_SUBSYSTEM_COMMON))
		return -EPERM;

	if (FUNC4(&adapter->mbox_lock))
		return -1;

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = cmd->va;
	FUNC2(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES,
			       cmd->size, wrb, cmd);
	req->parameter_type = FUNC3(1);

	status = FUNC1(adapter);
err:
	FUNC5(&adapter->mbox_lock);
	return status;
}
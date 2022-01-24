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
typedef  int /*<<< orphan*/  u32 ;
struct be_resources {int dummy; } ;
struct be_nic_res_desc {int /*<<< orphan*/  vf_num; int /*<<< orphan*/  pf_num; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_resp_get_func_config* va; } ;
struct TYPE_4__ {int version; } ;
struct be_cmd_resp_get_func_config {int /*<<< orphan*/  func_param; int /*<<< orphan*/  desc_count; TYPE_2__ hdr; } ;
struct be_cmd_req_get_func_config {int /*<<< orphan*/  func_param; int /*<<< orphan*/  desc_count; TYPE_2__ hdr; } ;
struct be_adapter {TYPE_1__* pdev; int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  vf_num; int /*<<< orphan*/  pf_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_FUNC_CONFIG ; 
 int /*<<< orphan*/  PF_NUM_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (struct be_resources*,struct be_nic_res_desc*) ; 
 struct be_nic_res_desc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct be_cmd_resp_get_func_config* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct be_cmd_resp_get_func_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct be_adapter*) ; 
 struct be_mcc_wrb* FUNC12 (struct be_adapter*) ; 

int FUNC13(struct be_adapter *adapter, struct be_resources *res)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_func_config *req;
	int status;
	struct be_dma_mem cmd;

	if (FUNC9(&adapter->mbox_lock))
		return -1;

	FUNC8(&cmd, 0, sizeof(struct be_dma_mem));
	cmd.size = sizeof(struct be_cmd_resp_get_func_config);
	cmd.va = FUNC5(&adapter->pdev->dev, cmd.size, &cmd.dma,
				    GFP_ATOMIC);
	if (!cmd.va) {
		FUNC4(&adapter->pdev->dev, "Memory alloc failure\n");
		status = -ENOMEM;
		goto err;
	}

	wrb = FUNC12(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = cmd.va;

	FUNC3(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_FUNC_CONFIG,
			       cmd.size, wrb, &cmd);

	if (FUNC11(adapter))
		req->hdr.version = 1;

	status = FUNC2(adapter);
	if (!status) {
		struct be_cmd_resp_get_func_config *resp = cmd.va;
		u32 desc_count = FUNC7(resp->desc_count);
		struct be_nic_res_desc *desc;

		/* GET_FUNC_CONFIG returns resource descriptors of the
		 * current function only. So, pf_num should be set to
		 * PF_NUM_IGNORE.
		 */
		desc = FUNC1(resp->func_param, desc_count,
					    PF_NUM_IGNORE);
		if (!desc) {
			status = -EINVAL;
			goto err;
		}

		/* Store pf_num & vf_num for later use in GET_PROFILE_CONFIG */
		adapter->pf_num = desc->pf_num;
		adapter->vf_num = desc->vf_num;

		if (res)
			FUNC0(res, desc);
	}
err:
	FUNC10(&adapter->mbox_lock);
	if (cmd.va)
		FUNC6(&adapter->pdev->dev, cmd.size, cmd.va,
				  cmd.dma);
	return status;
}
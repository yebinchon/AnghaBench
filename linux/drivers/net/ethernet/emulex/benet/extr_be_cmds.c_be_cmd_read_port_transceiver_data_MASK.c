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
typedef  scalar_t__ u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_resp_port_type* va; } ;
struct be_cmd_resp_port_type {int /*<<< orphan*/  page_data; void* page_num; void* port; int /*<<< orphan*/  hdr; } ;
struct be_cmd_req_port_type {int /*<<< orphan*/  page_data; void* page_num; void* port; int /*<<< orphan*/  hdr; } ;
struct be_adapter {scalar_t__ hba_port_num; TYPE_1__* pdev; int /*<<< orphan*/  mcc_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  OPCODE_COMMON_READ_TRANSRECV_DATA ; 
 int /*<<< orphan*/  PAGE_DATA_LEN ; 
 scalar_t__ TR_PAGE_A2 ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct be_cmd_resp_port_type* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,struct be_cmd_resp_port_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC9 (struct be_adapter*) ; 

int FUNC10(struct be_adapter *adapter,
				      u8 page_num, u8 *data)
{
	struct be_dma_mem cmd;
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_port_type *req;
	int status;

	if (page_num > TR_PAGE_A2)
		return -EINVAL;

	cmd.size = sizeof(struct be_cmd_resp_port_type);
	cmd.va = FUNC4(&adapter->pdev->dev, cmd.size, &cmd.dma,
				    GFP_ATOMIC);
	if (!cmd.va) {
		FUNC3(&adapter->pdev->dev, "Memory allocation failed\n");
		return -ENOMEM;
	}

	FUNC7(&adapter->mcc_lock);

	wrb = FUNC9(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = cmd.va;

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_READ_TRANSRECV_DATA,
			       cmd.size, wrb, &cmd);

	req->port = FUNC2(adapter->hba_port_num);
	req->page_num = FUNC2(page_num);
	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_port_type *resp = cmd.va;

		FUNC6(data, resp->page_data, PAGE_DATA_LEN);
	}
err:
	FUNC8(&adapter->mcc_lock);
	FUNC5(&adapter->pdev->dev, cmd.size, cmd.va, cmd.dma);
	return status;
}
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
struct TYPE_3__ {int /*<<< orphan*/  pci_funcnum; int /*<<< orphan*/ * controller_serial_number; int /*<<< orphan*/  phy_port; } ;
struct mgmt_controller_attrib {TYPE_1__ hba_attribs; int /*<<< orphan*/  hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct mgmt_controller_attrib* va; } ;
struct be_cmd_resp_hdr {int dummy; } ;
struct be_cmd_resp_cntl_attribs {int dummy; } ;
struct be_cmd_req_cntl_attribs {TYPE_1__ hba_attribs; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int* serial_num; TYPE_2__* pdev; int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  pf_num; int /*<<< orphan*/  hba_port_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int CNTL_SERIAL_NUM_WORDS ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_CNTL_ATTRIBUTES ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct mgmt_controller_attrib* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct mgmt_controller_attrib*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC12 (struct be_adapter*) ; 

int FUNC13(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_cntl_attribs *req;
	struct be_cmd_resp_cntl_attribs *resp;
	int status, i;
	int payload_len = FUNC8(sizeof(*req), sizeof(*resp));
	struct mgmt_controller_attrib *attribs;
	struct be_dma_mem attribs_cmd;
	u32 *serial_num;

	if (FUNC10(&adapter->mbox_lock))
		return -1;

	FUNC9(&attribs_cmd, 0, sizeof(struct be_dma_mem));
	attribs_cmd.size = sizeof(struct be_cmd_resp_cntl_attribs);
	attribs_cmd.va = FUNC5(&adapter->pdev->dev,
					    attribs_cmd.size,
					    &attribs_cmd.dma, GFP_ATOMIC);
	if (!attribs_cmd.va) {
		FUNC4(&adapter->pdev->dev, "Memory allocation failure\n");
		status = -ENOMEM;
		goto err;
	}

	wrb = FUNC12(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = attribs_cmd.va;

	FUNC3(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_CNTL_ATTRIBUTES, payload_len,
			       wrb, &attribs_cmd);

	status = FUNC2(adapter);
	if (!status) {
		attribs = attribs_cmd.va + sizeof(struct be_cmd_resp_hdr);
		adapter->hba_port_num = attribs->hba_attribs.phy_port;
		serial_num = attribs->hba_attribs.controller_serial_number;
		for (i = 0; i < CNTL_SERIAL_NUM_WORDS; i++)
			adapter->serial_num[i] = FUNC7(serial_num[i]) &
				(FUNC1(16) - 1);
		/* For BEx, since GET_FUNC_CONFIG command is not
		 * supported, we read funcnum here as a workaround.
		 */
		if (FUNC0(adapter))
			adapter->pf_num = attribs->hba_attribs.pci_funcnum;
	}

err:
	FUNC11(&adapter->mbox_lock);
	if (attribs_cmd.va)
		FUNC6(&adapter->pdev->dev, attribs_cmd.size,
				  attribs_cmd.va, attribs_cmd.dma);
	return status;
}
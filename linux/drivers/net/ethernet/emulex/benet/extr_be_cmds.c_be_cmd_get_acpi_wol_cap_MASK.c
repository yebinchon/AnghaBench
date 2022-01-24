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
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_req_acpi_wol_magic_config_v1* va; } ;
struct be_cmd_resp_acpi_wol_magic_config_v1 {int wol_settings; int /*<<< orphan*/  magic_mac; } ;
struct TYPE_4__ {int version; } ;
struct be_cmd_req_acpi_wol_magic_config_v1 {int /*<<< orphan*/  query_options; TYPE_2__ hdr; } ;
struct be_adapter {int wol_cap; int wol_en; TYPE_1__* pdev; int /*<<< orphan*/  mbox_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_GET_WOL_CAP ; 
 int BE_WOL_CAP ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct be_cmd_req_acpi_wol_magic_config_v1* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct be_cmd_req_acpi_wol_magic_config_v1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC11 (struct be_adapter*) ; 

int FUNC12(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_acpi_wol_magic_config_v1 *req;
	int status = 0;
	struct be_dma_mem cmd;

	if (!FUNC0(adapter, OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG,
			    CMD_SUBSYSTEM_ETH))
		return -EPERM;

	if (FUNC1(adapter))
		return status;

	if (FUNC9(&adapter->mbox_lock))
		return -1;

	FUNC8(&cmd, 0, sizeof(struct be_dma_mem));
	cmd.size = sizeof(struct be_cmd_resp_acpi_wol_magic_config_v1);
	cmd.va = FUNC5(&adapter->pdev->dev, cmd.size, &cmd.dma,
				    GFP_ATOMIC);
	if (!cmd.va) {
		FUNC4(&adapter->pdev->dev, "Memory allocation failure\n");
		status = -ENOMEM;
		goto err;
	}

	wrb = FUNC11(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = cmd.va;

	FUNC3(&req->hdr, CMD_SUBSYSTEM_ETH,
			       OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG,
			       sizeof(*req), wrb, &cmd);

	req->hdr.version = 1;
	req->query_options = BE_GET_WOL_CAP;

	status = FUNC2(adapter);
	if (!status) {
		struct be_cmd_resp_acpi_wol_magic_config_v1 *resp;

		resp = (struct be_cmd_resp_acpi_wol_magic_config_v1 *)cmd.va;

		adapter->wol_cap = resp->wol_settings;

		/* Non-zero macaddr indicates WOL is enabled */
		if (adapter->wol_cap & BE_WOL_CAP &&
		    !FUNC7(resp->magic_mac))
			adapter->wol_en = true;
	}
err:
	FUNC10(&adapter->mbox_lock);
	if (cmd.va)
		FUNC6(&adapter->pdev->dev, cmd.size, cmd.va,
				  cmd.dma);
	return status;

}
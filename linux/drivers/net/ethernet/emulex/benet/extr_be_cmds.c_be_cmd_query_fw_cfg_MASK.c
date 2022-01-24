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
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_query_fw_cfg {int /*<<< orphan*/  asic_revision; int /*<<< orphan*/  function_caps; int /*<<< orphan*/  function_mode; int /*<<< orphan*/  phys_port; } ;
struct be_cmd_req_query_fw_cfg {int /*<<< orphan*/  hdr; } ;
struct be_adapter {int port_num; int function_mode; int function_caps; int asic_rev; int /*<<< orphan*/  mbox_lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  OPCODE_COMMON_QUERY_FIRMWARE_CONFIG ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 void* FUNC3 (struct be_mcc_wrb*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_query_fw_cfg *req;
	int status;

	if (FUNC5(&adapter->mbox_lock))
		return -1;

	wrb = FUNC7(adapter);
	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_QUERY_FIRMWARE_CONFIG,
			       sizeof(*req), wrb, NULL);

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_query_fw_cfg *resp = FUNC3(wrb);

		adapter->port_num = FUNC4(resp->phys_port);
		adapter->function_mode = FUNC4(resp->function_mode);
		adapter->function_caps = FUNC4(resp->function_caps);
		adapter->asic_rev = FUNC4(resp->asic_revision) & 0xFF;
		FUNC2(&adapter->pdev->dev,
			 "FW config: function_mode=0x%x, function_caps=0x%x\n",
			 adapter->function_mode, adapter->function_caps);
	}

	FUNC6(&adapter->mbox_lock);
	return status;
}
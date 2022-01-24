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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_req_set_mac_list* va; } ;
struct TYPE_4__ {int /*<<< orphan*/  domain; } ;
struct be_cmd_req_set_mac_list {int mac_count; int /*<<< orphan*/  mac; TYPE_2__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_MAC_LIST ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 struct be_cmd_req_set_mac_list* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct be_cmd_req_set_mac_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter, u8 *mac_array,
			u8 mac_count, u32 domain)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_mac_list *req;
	int status;
	struct be_dma_mem cmd;

	FUNC5(&cmd, 0, sizeof(struct be_dma_mem));
	cmd.size = sizeof(struct be_cmd_req_set_mac_list);
	cmd.va = FUNC2(&adapter->pdev->dev, cmd.size, &cmd.dma,
				    GFP_KERNEL);
	if (!cmd.va)
		return -ENOMEM;

	FUNC6(&adapter->mcc_lock);

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = cmd.va;
	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_MAC_LIST, sizeof(*req),
			       wrb, &cmd);

	req->hdr.domain = domain;
	req->mac_count = mac_count;
	if (mac_count)
		FUNC4(req->mac, mac_array, ETH_ALEN*mac_count);

	status = FUNC0(adapter);

err:
	FUNC3(&adapter->pdev->dev, cmd.size, cmd.va, cmd.dma);
	FUNC7(&adapter->mcc_lock);
	return status;
}
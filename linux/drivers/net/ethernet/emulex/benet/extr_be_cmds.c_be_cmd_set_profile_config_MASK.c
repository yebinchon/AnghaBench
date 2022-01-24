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
typedef  void* u8 ;
struct be_mcc_wrb {int /*<<< orphan*/  member_0; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct be_cmd_req_set_profile_config* va; } ;
struct TYPE_4__ {void* domain; void* version; } ;
struct be_cmd_req_set_profile_config {int /*<<< orphan*/  desc; int /*<<< orphan*/  desc_count; TYPE_2__ hdr; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_PROFILE_CONFIG ; 
 int FUNC0 (struct be_adapter*,struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct be_cmd_req_set_profile_config* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct be_cmd_req_set_profile_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct be_dma_mem*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct be_adapter *adapter, void *desc,
				     int size, int count, u8 version, u8 domain)
{
	struct be_cmd_req_set_profile_config *req;
	struct be_mcc_wrb wrb = {0};
	struct be_dma_mem cmd;
	int status;

	FUNC6(&cmd, 0, sizeof(struct be_dma_mem));
	cmd.size = sizeof(struct be_cmd_req_set_profile_config);
	cmd.va = FUNC3(&adapter->pdev->dev, cmd.size, &cmd.dma,
				    GFP_ATOMIC);
	if (!cmd.va)
		return -ENOMEM;

	req = cmd.va;
	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_PROFILE_CONFIG, cmd.size,
			       &wrb, &cmd);
	req->hdr.version = version;
	req->hdr.domain = domain;
	req->desc_count = FUNC2(count);
	FUNC5(req->desc, desc, size);

	status = FUNC0(adapter, &wrb);

	if (cmd.va)
		FUNC4(&adapter->pdev->dev, cmd.size, cmd.va,
				  cmd.dma);
	return status;
}
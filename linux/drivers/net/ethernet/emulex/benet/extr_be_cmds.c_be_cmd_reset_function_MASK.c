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
struct be_cmd_req_hdr {int dummy; } ;
struct be_adapter {int /*<<< orphan*/  mbox_lock; TYPE_1__* pdev; scalar_t__ db; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  OPCODE_COMMON_FUNCTION_RESET ; 
 scalar_t__ SLIPORT_CONTROL_OFFSET ; 
 int /*<<< orphan*/  SLI_PORT_CONTROL_IP_MASK ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_cmd_req_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct be_cmd_req_hdr* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct be_adapter*) ; 
 int FUNC6 (struct be_adapter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC9 (struct be_adapter*) ; 

int FUNC10(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_hdr *req;
	int status;

	if (FUNC5(adapter)) {
		FUNC4(SLI_PORT_CONTROL_IP_MASK,
			  adapter->db + SLIPORT_CONTROL_OFFSET);
		status = FUNC6(adapter);
		if (status)
			FUNC2(&adapter->pdev->dev,
				"Adapter in non recoverable error\n");
		return status;
	}

	if (FUNC7(&adapter->mbox_lock))
		return -1;

	wrb = FUNC9(adapter);
	req = FUNC3(wrb);

	FUNC1(req, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_FUNCTION_RESET, sizeof(*req), wrb,
			       NULL);

	status = FUNC0(adapter);

	FUNC8(&adapter->mbox_lock);
	return status;
}
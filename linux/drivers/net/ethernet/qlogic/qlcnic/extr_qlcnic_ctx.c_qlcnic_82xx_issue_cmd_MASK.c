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
typedef  scalar_t__ u32 ;
struct qlcnic_hardware_context {int dummy; } ;
struct TYPE_4__ {int* arg; int num; } ;
struct TYPE_3__ {int num; scalar_t__* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QLCNIC_CDRP_CRB_OFFSET ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ QLCNIC_CDRP_RSP_FAIL ; 
 scalar_t__ QLCNIC_CDRP_RSP_OK ; 
 scalar_t__ QLCNIC_CDRP_RSP_TIMEOUT ; 
#define  QLCNIC_RCODE_INVALID 133 
#define  QLCNIC_RCODE_INVALID_ARGS 132 
#define  QLCNIC_RCODE_NOT_IMPL 131 
#define  QLCNIC_RCODE_NOT_PERMITTED 130 
#define  QLCNIC_RCODE_NOT_SUPPORTED 129 
 scalar_t__ QLCNIC_RCODE_SUCCESS ; 
#define  QLCNIC_RCODE_TIMEOUT 128 
 int /*<<< orphan*/  QLCNIC_SIGN_CRB_OFFSET ; 
 void* FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC8 (struct qlcnic_hardware_context*) ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 

int FUNC10(struct qlcnic_adapter *adapter,
			  struct qlcnic_cmd_args *cmd)
{
	int i, err = 0;
	u32 rsp;
	u32 signature;
	struct pci_dev *pdev = adapter->pdev;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	const char *fmt;

	signature = FUNC8(ahw);

	/* Acquire semaphore before accessing CRB */
	if (FUNC5(adapter)) {
		cmd->rsp.arg[0] = QLCNIC_RCODE_TIMEOUT;
		return cmd->rsp.arg[0];
	}

	FUNC3(adapter, QLCNIC_SIGN_CRB_OFFSET, signature);
	for (i = 1; i < cmd->req.num; i++)
		FUNC3(adapter, FUNC0(i), cmd->req.arg[i]);
	FUNC3(adapter, QLCNIC_CDRP_CRB_OFFSET,
		FUNC1(cmd->req.arg[0]));
	rsp = FUNC9(adapter);

	if (rsp == QLCNIC_CDRP_RSP_TIMEOUT) {
		FUNC4(&pdev->dev, "command timeout, response = 0x%x\n", rsp);
		cmd->rsp.arg[0] = QLCNIC_RCODE_TIMEOUT;
	} else if (rsp == QLCNIC_CDRP_RSP_FAIL) {
		cmd->rsp.arg[0] = FUNC2(adapter, FUNC0(1), &err);
		switch (cmd->rsp.arg[0]) {
		case QLCNIC_RCODE_INVALID_ARGS:
			fmt = "CDRP invalid args: [%d]\n";
			break;
		case QLCNIC_RCODE_NOT_SUPPORTED:
		case QLCNIC_RCODE_NOT_IMPL:
			fmt = "CDRP command not supported: [%d]\n";
			break;
		case QLCNIC_RCODE_NOT_PERMITTED:
			fmt = "CDRP requested action not permitted: [%d]\n";
			break;
		case QLCNIC_RCODE_INVALID:
			fmt = "CDRP invalid or unknown cmd received: [%d]\n";
			break;
		case QLCNIC_RCODE_TIMEOUT:
			fmt = "CDRP command timeout: [%d]\n";
			break;
		default:
			fmt = "CDRP command failed: [%d]\n";
			break;
		}
		FUNC4(&pdev->dev, fmt, cmd->rsp.arg[0]);
		FUNC7(adapter, cmd);
	} else if (rsp == QLCNIC_CDRP_RSP_OK)
		cmd->rsp.arg[0] = QLCNIC_RCODE_SUCCESS;

	for (i = 1; i < cmd->rsp.num; i++)
		cmd->rsp.arg[i] = FUNC2(adapter, FUNC0(i), &err);

	/* Release semaphore */
	FUNC6(adapter);
	return cmd->rsp.arg[0];
}
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
struct ibmvmc_crq_msg {int type; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
#define  VMC_MSG_ADD_BUF 138 
#define  VMC_MSG_ADD_BUF_RESP 137 
#define  VMC_MSG_CAP 136 
#define  VMC_MSG_CAP_RESP 135 
#define  VMC_MSG_CLOSE 134 
#define  VMC_MSG_CLOSE_RESP 133 
#define  VMC_MSG_OPEN 132 
#define  VMC_MSG_OPEN_RESP 131 
#define  VMC_MSG_REM_BUF 130 
#define  VMC_MSG_REM_BUF_RESP 129 
#define  VMC_MSG_SIGNAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ ibmvmc ; 
 int /*<<< orphan*/  FUNC2 (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvmc_crq_msg*,struct crq_server_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvmc_crq_msg*,struct crq_server_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ; 
 int ibmvmc_state_capabilities ; 
 int /*<<< orphan*/  FUNC8 (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ; 

__attribute__((used)) static void FUNC9(struct crq_server_adapter *adapter,
			       struct ibmvmc_crq_msg *crq)
{
	switch (crq->type) {
	case VMC_MSG_CAP_RESP:
		FUNC0(adapter->dev, "CRQ recv: capabilities resp (0x%x)\n",
			crq->type);
		if (ibmvmc.state == ibmvmc_state_capabilities)
			FUNC3(adapter, crq);
		else
			FUNC1(adapter->dev, "caps msg invalid in state 0x%x\n",
				 ibmvmc.state);
		break;
	case VMC_MSG_OPEN_RESP:
		FUNC0(adapter->dev, "CRQ recv: open resp (0x%x)\n",
			crq->type);
		if (FUNC8(adapter, crq) == 0)
			FUNC5(crq, adapter);
		break;
	case VMC_MSG_ADD_BUF:
		FUNC0(adapter->dev, "CRQ recv: add buf (0x%x)\n",
			crq->type);
		if (FUNC8(adapter, crq) == 0)
			FUNC2(adapter, crq);
		break;
	case VMC_MSG_REM_BUF:
		FUNC0(adapter->dev, "CRQ recv: rem buf (0x%x)\n",
			crq->type);
		if (FUNC8(adapter, crq) == 0)
			FUNC7(adapter, crq);
		break;
	case VMC_MSG_SIGNAL:
		FUNC0(adapter->dev, "CRQ recv: signal msg (0x%x)\n",
			crq->type);
		if (FUNC8(adapter, crq) == 0)
			FUNC6(adapter, crq);
		break;
	case VMC_MSG_CLOSE_RESP:
		FUNC0(adapter->dev, "CRQ recv: close resp (0x%x)\n",
			crq->type);
		if (FUNC8(adapter, crq) == 0)
			FUNC4(crq, adapter);
		break;
	case VMC_MSG_CAP:
	case VMC_MSG_OPEN:
	case VMC_MSG_CLOSE:
	case VMC_MSG_ADD_BUF_RESP:
	case VMC_MSG_REM_BUF_RESP:
		FUNC1(adapter->dev, "CRQ recv: unexpected msg (0x%x)\n",
			 crq->type);
		break;
	default:
		FUNC1(adapter->dev, "CRQ recv: unknown msg (0x%x)\n",
			 crq->type);
		break;
	}
}
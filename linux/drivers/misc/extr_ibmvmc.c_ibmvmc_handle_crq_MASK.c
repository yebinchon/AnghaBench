#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ibmvmc_crq_msg {int valid; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct crq_server_adapter*,struct ibmvmc_crq_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvmc_crq_msg*,struct crq_server_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct crq_server_adapter*,int) ; 

__attribute__((used)) static void FUNC4(struct ibmvmc_crq_msg *crq,
			      struct crq_server_adapter *adapter)
{
	switch (crq->valid) {
	case 0xC0:		/* initialization */
		FUNC2(crq, adapter);
		break;
	case 0xFF:	/* Hypervisor telling us the connection is closed */
		FUNC0(adapter->dev, "CRQ recv: virtual adapter failed - resetting.\n");
		FUNC3(adapter, true);
		break;
	case 0x80:	/* real payload */
		FUNC1(adapter, crq);
		break;
	default:
		FUNC0(adapter->dev, "CRQ recv: unknown msg 0x%02x.\n",
			 crq->valid);
		break;
	}
}
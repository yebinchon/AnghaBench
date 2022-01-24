#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ first; } ;
union ibmvnic_crq {TYPE_3__ generic; } ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int /*<<< orphan*/  active; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  resetting; TYPE_2__ crq; int /*<<< orphan*/  netdev; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int unit_address; struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int H_CLOSED ; 
 int /*<<< orphan*/  H_SEND_CRQ ; 
 scalar_t__ IBMVNIC_CRQ_INIT_CMD ; 
 int /*<<< orphan*/  VNIC_RESET_FATAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ibmvnic_adapter *adapter,
			    union ibmvnic_crq *crq)
{
	unsigned int ua = adapter->vdev->unit_address;
	struct device *dev = &adapter->vdev->dev;
	u64 *u64_crq = (u64 *)crq;
	int rc;

	FUNC4(adapter->netdev, "Sending CRQ: %016lx %016lx\n",
		   (unsigned long int)FUNC0(u64_crq[0]),
		   (unsigned long int)FUNC0(u64_crq[1]));

	if (!adapter->crq.active &&
	    crq->generic.first != IBMVNIC_CRQ_INIT_CMD) {
		FUNC1(dev, "Invalid request detected while CRQ is inactive, possible device state change during reset\n");
		return -EINVAL;
	}

	/* Make sure the hypervisor sees the complete request */
	FUNC3();

	rc = FUNC5(H_SEND_CRQ, ua,
				FUNC0(u64_crq[0]),
				FUNC0(u64_crq[1]));

	if (rc) {
		if (rc == H_CLOSED) {
			FUNC1(dev, "CRQ Queue closed\n");
			if (FUNC6(0, &adapter->resetting))
				FUNC2(adapter, VNIC_RESET_FATAL);
		}

		FUNC1(dev, "Send error (rc=%d)\n", rc);
	}

	return rc;
}
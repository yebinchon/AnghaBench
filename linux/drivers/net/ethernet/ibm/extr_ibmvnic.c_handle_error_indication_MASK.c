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
struct TYPE_4__ {int flags; int /*<<< orphan*/  error_cause; } ;
union ibmvnic_crq {TYPE_2__ error_indication; } ;
typedef  int /*<<< orphan*/  u16 ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int IBMVNIC_FATAL_ERROR ; 
 int /*<<< orphan*/  VNIC_RESET_FATAL ; 
 int /*<<< orphan*/  VNIC_RESET_NON_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(union ibmvnic_crq *crq,
				    struct ibmvnic_adapter *adapter)
{
	struct device *dev = &adapter->vdev->dev;
	u16 cause;

	cause = FUNC0(crq->error_indication.error_cause);

	FUNC1(dev,
			     "Firmware reports %serror, cause: %s. Starting recovery...\n",
			     crq->error_indication.flags
				& IBMVNIC_FATAL_ERROR ? "FATAL " : "",
			     FUNC2(cause));

	if (crq->error_indication.flags & IBMVNIC_FATAL_ERROR)
		FUNC3(adapter, VNIC_RESET_FATAL);
	else
		FUNC3(adapter, VNIC_RESET_NON_FATAL);
}
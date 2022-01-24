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
struct TYPE_2__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  first; } ;
union ibmvnic_crq {TYPE_1__ generic; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  netdev; } ;
typedef  int /*<<< orphan*/  crq ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVNIC_CRQ_INIT ; 
 int /*<<< orphan*/  IBMVNIC_CRQ_INIT_CMD ; 
 int FUNC0 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 int /*<<< orphan*/  FUNC1 (union ibmvnic_crq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct ibmvnic_adapter *adapter)
{
	union ibmvnic_crq crq;

	FUNC1(&crq, 0, sizeof(crq));
	crq.generic.first = IBMVNIC_CRQ_INIT_CMD;
	crq.generic.cmd = IBMVNIC_CRQ_INIT;
	FUNC2(adapter->netdev, "Sending CRQ init\n");

	return FUNC0(adapter, &crq);
}
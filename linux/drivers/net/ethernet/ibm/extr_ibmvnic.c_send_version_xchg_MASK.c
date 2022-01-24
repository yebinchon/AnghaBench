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
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  cmd; int /*<<< orphan*/  first; } ;
union ibmvnic_crq {TYPE_1__ version_exchange; } ;
struct ibmvnic_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  crq ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVNIC_CRQ_CMD ; 
 int /*<<< orphan*/  VERSION_EXCHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 int /*<<< orphan*/  ibmvnic_version ; 
 int /*<<< orphan*/  FUNC2 (union ibmvnic_crq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ibmvnic_adapter *adapter)
{
	union ibmvnic_crq crq;

	FUNC2(&crq, 0, sizeof(crq));
	crq.version_exchange.first = IBMVNIC_CRQ_CMD;
	crq.version_exchange.cmd = VERSION_EXCHANGE;
	crq.version_exchange.version = FUNC0(ibmvnic_version);

	return FUNC1(adapter, &crq);
}
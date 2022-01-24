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
struct TYPE_2__ {void* capability; int /*<<< orphan*/  cmd; int /*<<< orphan*/  first; } ;
union ibmvnic_crq {TYPE_1__ query_capability; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  running_cap_crqs; } ;
typedef  int /*<<< orphan*/  crq ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVNIC_CRQ_CMD ; 
 int /*<<< orphan*/  MAX_MTU ; 
 int /*<<< orphan*/  MAX_MULTICAST_FILTERS ; 
 int /*<<< orphan*/  MAX_RX_ADD_ENTRIES_PER_SUBCRQ ; 
 int /*<<< orphan*/  MAX_RX_ADD_QUEUES ; 
 int /*<<< orphan*/  MAX_RX_QUEUES ; 
 int /*<<< orphan*/  MAX_TX_ENTRIES_PER_SUBCRQ ; 
 int /*<<< orphan*/  MAX_TX_QUEUES ; 
 int /*<<< orphan*/  MAX_TX_SG_ENTRIES ; 
 int /*<<< orphan*/  MIN_MTU ; 
 int /*<<< orphan*/  MIN_RX_ADD_ENTRIES_PER_SUBCRQ ; 
 int /*<<< orphan*/  MIN_RX_ADD_QUEUES ; 
 int /*<<< orphan*/  MIN_RX_QUEUES ; 
 int /*<<< orphan*/  MIN_TX_ENTRIES_PER_SUBCRQ ; 
 int /*<<< orphan*/  MIN_TX_QUEUES ; 
 int /*<<< orphan*/  OPT_RXBA_ENTRIES_PER_SUBCRQ ; 
 int /*<<< orphan*/  OPT_RX_BUFADD_Q_PER_RX_COMP_Q ; 
 int /*<<< orphan*/  OPT_RX_COMP_QUEUES ; 
 int /*<<< orphan*/  OPT_TX_COMP_SUB_QUEUES ; 
 int /*<<< orphan*/  OPT_TX_ENTRIES_PER_SUBCRQ ; 
 int /*<<< orphan*/  PROMISC_SUPPORTED ; 
 int /*<<< orphan*/  QUERY_CAPABILITY ; 
 int /*<<< orphan*/  RX_SG_SUPPORTED ; 
 int /*<<< orphan*/  RX_VLAN_HEADER_INSERTION ; 
 int /*<<< orphan*/  TCP_IP_OFFLOAD ; 
 int /*<<< orphan*/  TX_RX_DESC_REQ ; 
 int /*<<< orphan*/  VLAN_HEADER_INSERTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvnic_adapter*,union ibmvnic_crq*) ; 
 int /*<<< orphan*/  FUNC4 (union ibmvnic_crq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ibmvnic_adapter *adapter)
{
	union ibmvnic_crq crq;

	FUNC1(&adapter->running_cap_crqs, 0);
	FUNC4(&crq, 0, sizeof(crq));
	crq.query_capability.first = IBMVNIC_CRQ_CMD;
	crq.query_capability.cmd = QUERY_CAPABILITY;

	crq.query_capability.capability = FUNC2(MIN_TX_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MIN_RX_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MIN_RX_ADD_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MAX_TX_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MAX_RX_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MAX_RX_ADD_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability =
	    FUNC2(MIN_TX_ENTRIES_PER_SUBCRQ);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability =
	    FUNC2(MIN_RX_ADD_ENTRIES_PER_SUBCRQ);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability =
	    FUNC2(MAX_TX_ENTRIES_PER_SUBCRQ);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability =
	    FUNC2(MAX_RX_ADD_ENTRIES_PER_SUBCRQ);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(TCP_IP_OFFLOAD);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(PROMISC_SUPPORTED);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MIN_MTU);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MAX_MTU);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MAX_MULTICAST_FILTERS);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(VLAN_HEADER_INSERTION);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(RX_VLAN_HEADER_INSERTION);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(MAX_TX_SG_ENTRIES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(RX_SG_SUPPORTED);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(OPT_TX_COMP_SUB_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(OPT_RX_COMP_QUEUES);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability =
			FUNC2(OPT_RX_BUFADD_Q_PER_RX_COMP_Q);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability =
			FUNC2(OPT_TX_ENTRIES_PER_SUBCRQ);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability =
			FUNC2(OPT_RXBA_ENTRIES_PER_SUBCRQ);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);

	crq.query_capability.capability = FUNC2(TX_RX_DESC_REQ);
	FUNC0(&adapter->running_cap_crqs);
	FUNC3(adapter, &crq);
}
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
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {scalar_t__ is_up; int capabilities; int /*<<< orphan*/  (* set_promisc ) (struct netxen_adapter*,int /*<<< orphan*/ ) ;TYPE_1__ ahw; int /*<<< orphan*/  (* stop_port ) (struct netxen_adapter*) ;int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ; 
 int /*<<< orphan*/  NETXEN_NIU_NON_PROMISC_MODE ; 
 int NX_FW_CAPABILITY_LINK_NOTIFICATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __NX_DEV_UP ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct netxen_adapter *adapter, struct net_device *netdev)
{
	if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
		return;

	if (!FUNC10(__NX_DEV_UP, &adapter->state))
		return;

	FUNC7();
	FUNC1(netdev);
	FUNC2(netdev);

	if (adapter->capabilities & NX_FW_CAPABILITY_LINK_NOTIFICATION)
		FUNC3(adapter, 0);

	if (adapter->stop_port)
		adapter->stop_port(adapter);

	if (FUNC0(adapter->ahw.revision_id))
		FUNC5(adapter);

	adapter->set_promisc(adapter, NETXEN_NIU_NON_PROMISC_MODE);

	FUNC4(adapter);

	FUNC6(adapter);
}
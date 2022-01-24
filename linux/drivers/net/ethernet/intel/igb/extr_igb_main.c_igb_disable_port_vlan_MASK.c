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
struct igb_adapter {TYPE_1__* vf_data; } ;
struct TYPE_2__ {scalar_t__ pf_qos; scalar_t__ pf_vlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct igb_adapter *adapter, int vf)
{
	/* Restore tagless access via VLAN 0 */
	FUNC0(adapter, 0, true, vf);

	FUNC3(adapter, 0, vf);
	FUNC2(adapter, vf, true);

	/* Remove any PF assigned VLAN */
	if (adapter->vf_data[vf].pf_vlan)
		FUNC0(adapter, adapter->vf_data[vf].pf_vlan,
				false, vf);

	adapter->vf_data[vf].pf_vlan = 0;
	adapter->vf_data[vf].pf_qos = 0;
	FUNC1(adapter, vf, false);

	return 0;
}
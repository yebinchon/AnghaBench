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
struct TYPE_3__ {scalar_t__ fnum; } ;
struct qlcnic_adapter {int flags; TYPE_2__* ahw; TYPE_1__ fhash; } ;
struct TYPE_4__ {scalar_t__ vxlan_port; } ;

/* Variables and functions */
 int QLCNIC_ADD_VXLAN_PORT ; 
 int QLCNIC_DEL_VXLAN_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static void FUNC3(struct qlcnic_adapter *adapter)
{
	if (adapter->fhash.fnum)
		FUNC0(adapter);

	if (adapter->flags & QLCNIC_ADD_VXLAN_PORT) {
		if (FUNC2(adapter))
			return;

		if (FUNC1(adapter, true))
			return;

		adapter->flags &= ~QLCNIC_ADD_VXLAN_PORT;
	} else if (adapter->flags & QLCNIC_DEL_VXLAN_PORT) {
		if (FUNC1(adapter, false))
			return;

		adapter->ahw->vxlan_port = 0;
		adapter->flags &= ~QLCNIC_DEL_VXLAN_PORT;
	}
}
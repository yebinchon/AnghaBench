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
typedef  int /*<<< orphan*/  u16 ;
struct iavf_vlan_filter {int remove; } ;
struct iavf_adapter {int /*<<< orphan*/  mac_vlan_list_lock; int /*<<< orphan*/  aq_required; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_FLAG_AQ_DEL_VLAN_FILTER ; 
 struct iavf_vlan_filter* FUNC0 (struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iavf_adapter *adapter, u16 vlan)
{
	struct iavf_vlan_filter *f;

	FUNC1(&adapter->mac_vlan_list_lock);

	f = FUNC0(adapter, vlan);
	if (f) {
		f->remove = true;
		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
	}

	FUNC2(&adapter->mac_vlan_list_lock);
}
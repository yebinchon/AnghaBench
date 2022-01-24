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
struct iavf_vlan_filter {int add; int /*<<< orphan*/  list; int /*<<< orphan*/  vlan; } ;
struct iavf_adapter {int /*<<< orphan*/  mac_vlan_list_lock; int /*<<< orphan*/  aq_required; int /*<<< orphan*/  vlan_filter_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_ADD_VLAN_FILTER ; 
 struct iavf_vlan_filter* FUNC0 (struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 struct iavf_vlan_filter* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct
iavf_vlan_filter *FUNC5(struct iavf_adapter *adapter, u16 vlan)
{
	struct iavf_vlan_filter *f = NULL;

	FUNC3(&adapter->mac_vlan_list_lock);

	f = FUNC0(adapter, vlan);
	if (!f) {
		f = FUNC1(sizeof(*f), GFP_ATOMIC);
		if (!f)
			goto clearout;

		f->vlan = vlan;

		FUNC2(&f->list, &adapter->vlan_filter_list);
		f->add = true;
		adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
	}

clearout:
	FUNC4(&adapter->mac_vlan_list_lock);
	return f;
}
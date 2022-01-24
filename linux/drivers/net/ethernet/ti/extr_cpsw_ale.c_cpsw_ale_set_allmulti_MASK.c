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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int ale_entries; } ;
struct cpsw_ale {int /*<<< orphan*/  vlan_field_bits; TYPE_1__ params; } ;

/* Variables and functions */
 int ALE_ENTRY_WORDS ; 
 int ALE_PORT_HOST ; 
 int ALE_TYPE_VLAN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_ale*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cpsw_ale*,int,int /*<<< orphan*/ *) ; 

void FUNC7(struct cpsw_ale *ale, int allmulti, int port)
{
	u32 ale_entry[ALE_ENTRY_WORDS];
	int unreg_mcast = 0;
	int type, idx;

	for (idx = 0; idx < ale->params.ale_entries; idx++) {
		int vlan_members;

		FUNC4(ale, idx, ale_entry);
		type = FUNC1(ale_entry);
		if (type != ALE_TYPE_VLAN)
			continue;
		vlan_members =
			FUNC2(ale_entry,
						      ale->vlan_field_bits);

		if (port != -1 && !(vlan_members & FUNC0(port)))
			continue;

		unreg_mcast =
			FUNC3(ale_entry,
						      ale->vlan_field_bits);
		if (allmulti)
			unreg_mcast |= ALE_PORT_HOST;
		else
			unreg_mcast &= ~ALE_PORT_HOST;
		FUNC5(ale_entry, unreg_mcast,
					      ale->vlan_field_bits);
		FUNC6(ale, idx, ale_entry);
	}
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int ale_entries; } ;
struct cpsw_ale {TYPE_1__ params; } ;

/* Variables and functions */
 int ALE_ENTRY_WORDS ; 
 int ALE_TYPE_ADDR ; 
 int ALE_TYPE_VLAN_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_ale*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cpsw_ale*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cpsw_ale*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct cpsw_ale *ale, int port_mask, int vid)
{
	u32 ale_entry[ALE_ENTRY_WORDS];
	int ret, idx;

	for (idx = 0; idx < ale->params.ale_entries; idx++) {
		FUNC6(ale, idx, ale_entry);
		ret = FUNC2(ale_entry);
		if (ret != ALE_TYPE_ADDR && ret != ALE_TYPE_VLAN_ADDR)
			continue;

		/* if vid passed is -1 then remove all multicast entry from
		 * the table irrespective of vlan id, if a valid vlan id is
		 * passed then remove only multicast added to that vlan id.
		 * if vlan id doesn't match then move on to next entry.
		 */
		if (vid != -1 && FUNC5(ale_entry) != vid)
			continue;

		if (FUNC3(ale_entry)) {
			u8 addr[6];

			if (FUNC4(ale_entry))
				continue;

			FUNC1(ale_entry, addr);
			if (!FUNC8(addr))
				FUNC0(ale, ale_entry, port_mask);
		}

		FUNC7(ale, idx, ale_entry);
	}
	return 0;
}
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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int ale_entries; } ;
struct cpsw_ale {TYPE_1__ params; } ;

/* Variables and functions */
 int ALE_ENTRY_WORDS ; 
 int ALE_TYPE_ADDR ; 
 int ALE_TYPE_VLAN_ADDR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_ale*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(struct cpsw_ale *ale, const u8 *addr, u16 vid)
{
	u32 ale_entry[ALE_ENTRY_WORDS];
	int type, idx;

	for (idx = 0; idx < ale->params.ale_entries; idx++) {
		u8 entry_addr[6];

		FUNC3(ale, idx, ale_entry);
		type = FUNC1(ale_entry);
		if (type != ALE_TYPE_ADDR && type != ALE_TYPE_VLAN_ADDR)
			continue;
		if (FUNC2(ale_entry) != vid)
			continue;
		FUNC0(ale_entry, entry_addr);
		if (FUNC4(entry_addr, addr))
			return idx;
	}
	return -ENOENT;
}
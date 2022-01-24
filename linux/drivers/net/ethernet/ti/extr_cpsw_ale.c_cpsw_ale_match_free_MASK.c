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
struct cpsw_ale {TYPE_1__ params; } ;

/* Variables and functions */
 int ALE_ENTRY_WORDS ; 
 int ALE_TYPE_FREE ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_ale*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct cpsw_ale *ale)
{
	u32 ale_entry[ALE_ENTRY_WORDS];
	int type, idx;

	for (idx = 0; idx < ale->params.ale_entries; idx++) {
		FUNC1(ale, idx, ale_entry);
		type = FUNC0(ale_entry);
		if (type == ALE_TYPE_FREE)
			return idx;
	}
	return -ENOENT;
}
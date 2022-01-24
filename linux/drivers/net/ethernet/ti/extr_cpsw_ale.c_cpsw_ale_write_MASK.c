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
typedef  int u32 ;
struct TYPE_2__ {int ale_entries; scalar_t__ ale_regs; } ;
struct cpsw_ale {TYPE_1__ params; } ;

/* Variables and functions */
 int ALE_ENTRY_WORDS ; 
 scalar_t__ ALE_TABLE ; 
 scalar_t__ ALE_TABLE_CONTROL ; 
 int ALE_TABLE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct cpsw_ale *ale, int idx, u32 *ale_entry)
{
	int i;

	FUNC0(idx > ale->params.ale_entries);

	for (i = 0; i < ALE_ENTRY_WORDS; i++)
		FUNC1(ale_entry[i], ale->params.ale_regs +
			       ALE_TABLE + 4 * i);

	FUNC1(idx | ALE_TABLE_WRITE, ale->params.ale_regs +
		       ALE_TABLE_CONTROL);

	return idx;
}
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
struct ath10k_hw_mem_layout {scalar_t__ hw_id; scalar_t__ hw_rev; } ;
struct ath10k {scalar_t__ target_version; scalar_t__ hw_rev; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k_hw_mem_layout const*) ; 
 int /*<<< orphan*/  ATH10K_FW_CRASH_DUMP_RAM_DATA ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ath10k_coredump_mask ; 
 struct ath10k_hw_mem_layout const* hw_mem_layouts ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const struct ath10k_hw_mem_layout *FUNC3(struct ath10k *ar)
{
	int i;

	if (!FUNC2(ATH10K_FW_CRASH_DUMP_RAM_DATA, &ath10k_coredump_mask))
		return NULL;

	if (FUNC1(ar->target_version == 0))
		return NULL;

	for (i = 0; i < FUNC0(hw_mem_layouts); i++) {
		if (ar->target_version == hw_mem_layouts[i].hw_id &&
		    ar->hw_rev == hw_mem_layouts[i].hw_rev)
			return &hw_mem_layouts[i];
	}

	return NULL;
}
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
typedef  int u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int CE_COUNT ; 
 int FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int) ; 

void FUNC2(struct ath10k *ar)
{
	int ce_id;
	u32 intr_summary;

	intr_summary = FUNC0(ar);

	for (ce_id = 0; intr_summary && (ce_id < CE_COUNT); ce_id++) {
		if (intr_summary & (1 << ce_id))
			intr_summary &= ~(1 << ce_id);
		else
			/* no intr pending on this CE */
			continue;

		FUNC1(ar, ce_id);
	}
}
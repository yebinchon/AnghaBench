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
struct bnxt {int cp_nr_rings; TYPE_1__* irq_tbl; int /*<<< orphan*/  intr_sem; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bnxt *bp)
{
	int i;

	FUNC0(&bp->intr_sem);

	FUNC2(bp);
	for (i = 0; i < bp->cp_nr_rings; i++) {
		int map_idx = FUNC1(bp, i);

		FUNC3(bp->irq_tbl[map_idx].vector);
	}
}
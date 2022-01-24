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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int max; } ;
struct rvu_block {scalar_t__* fn_map; TYPE_1__ lf; } ;
struct rvu {int /*<<< orphan*/  rsrc_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct rvu *rvu, struct rvu_block *block, u16 pcifunc, u16 slot)
{
	u16 match = 0;
	int lf;

	FUNC0(&rvu->rsrc_lock);
	for (lf = 0; lf < block->lf.max; lf++) {
		if (block->fn_map[lf] == pcifunc) {
			if (slot == match) {
				FUNC1(&rvu->rsrc_lock);
				return lf;
			}
			match++;
		}
	}
	FUNC1(&rvu->rsrc_lock);
	return -ENODEV;
}
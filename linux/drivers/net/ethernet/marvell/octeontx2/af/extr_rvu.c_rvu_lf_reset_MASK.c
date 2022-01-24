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
struct rvu_block {int /*<<< orphan*/  lfreset_reg; int /*<<< orphan*/  addr; int /*<<< orphan*/  implemented; } ;
struct rvu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct rvu *rvu, struct rvu_block *block, int lf)
{
	int err;

	if (!block->implemented)
		return 0;

	FUNC2(rvu, block->addr, block->lfreset_reg, lf | FUNC0(12));
	err = FUNC1(rvu, block->addr, block->lfreset_reg, FUNC0(12),
			   true);
	return err;
}
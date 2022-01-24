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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rvu_block {scalar_t__ addr; int /*<<< orphan*/  type; } ;
struct rvu {int /*<<< orphan*/  dev; TYPE_1__* hw; } ;
struct TYPE_2__ {struct rvu_block* block; } ;

/* Variables and functions */
 scalar_t__ BLKADDR_NIX0 ; 
 scalar_t__ BLKADDR_NPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int FUNC1 (struct rvu*,struct rvu_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvu*,struct rvu_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rvu *rvu, u16 pcifunc, u8 blkaddr)
{
	struct rvu_block *block;
	int slot, lf, num_lfs;
	int err;

	block = &rvu->hw->block[blkaddr];
	num_lfs = FUNC3(FUNC2(rvu, pcifunc),
					block->type);
	if (!num_lfs)
		return;
	for (slot = 0; slot < num_lfs; slot++) {
		lf = FUNC1(rvu, block, pcifunc, slot);
		if (lf < 0)
			continue;

		/* Cleanup LF and reset it */
		if (block->addr == BLKADDR_NIX0)
			FUNC5(rvu, pcifunc, block->addr, lf);
		else if (block->addr == BLKADDR_NPA)
			FUNC6(rvu, pcifunc, lf);

		err = FUNC4(rvu, block, lf);
		if (err) {
			FUNC0(rvu->dev, "Failed to reset blkaddr %d LF%d\n",
				block->addr, lf);
		}
	}
}
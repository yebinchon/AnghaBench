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
typedef  int u64 ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int implemented; } ;
struct rvu {struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BLK_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rvu *rvu)
{
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	int blkid;
	u64 cfg;

	/* For each block check if 'implemented' bit is set */
	for (blkid = 0; blkid < BLK_COUNT; blkid++) {
		block = &hw->block[blkid];
		cfg = FUNC2(rvu, FUNC1(blkid));
		if (cfg & FUNC0(11))
			block->implemented = true;
	}
}
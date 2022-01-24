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
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int /*<<< orphan*/  aq; } ;
struct rvu {struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPA ; 
 int /*<<< orphan*/  FUNC0 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct rvu *rvu)
{
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	int blkaddr;

	blkaddr = FUNC1(rvu, BLKTYPE_NPA, 0);
	if (blkaddr < 0)
		return;

	block = &hw->block[blkaddr];
	FUNC0(rvu, block->aq);
}
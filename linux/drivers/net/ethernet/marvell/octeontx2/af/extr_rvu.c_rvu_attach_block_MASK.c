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
typedef  unsigned long long u64 ;
struct rvu_pfvf {int dummy; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct TYPE_2__ {int /*<<< orphan*/  bmap; } ;
struct rvu_block {int lfcfg_reg; int lfshift; TYPE_1__ lf; } ;
struct rvu {struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC2 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int,int,unsigned long long) ; 

__attribute__((used)) static void FUNC6(struct rvu *rvu, int pcifunc,
			     int blktype, int num_lfs)
{
	struct rvu_pfvf *pfvf = FUNC2(rvu, pcifunc);
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	int slot, lf;
	int blkaddr;
	u64 cfg;

	if (!num_lfs)
		return;

	blkaddr = FUNC1(rvu, blktype, 0);
	if (blkaddr < 0)
		return;

	block = &hw->block[blkaddr];
	if (!block->lf.bmap)
		return;

	for (slot = 0; slot < num_lfs; slot++) {
		/* Allocate the resource */
		lf = FUNC0(&block->lf);
		if (lf < 0)
			return;

		cfg = (1ULL << 63) | (pcifunc << 8) | slot;
		FUNC5(rvu, blkaddr, block->lfcfg_reg |
			    (lf << block->lfshift), cfg);
		FUNC4(rvu, pfvf, block,
				    pcifunc, lf, true);

		/* Set start MSIX vector for this LF within this PF/VF */
		FUNC3(rvu, pfvf, block, lf);
	}
}
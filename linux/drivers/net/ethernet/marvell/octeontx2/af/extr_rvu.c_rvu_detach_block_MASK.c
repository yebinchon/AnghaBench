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
struct rvu_pfvf {int dummy; } ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int lfcfg_reg; int lfshift; int /*<<< orphan*/  lf; int /*<<< orphan*/  type; } ;
struct rvu {struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct rvu*,int,int) ; 
 struct rvu_pfvf* FUNC3 (struct rvu*,int) ; 
 int FUNC4 (struct rvu_pfvf*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rvu*,struct rvu_block*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*,int,int,int) ; 

__attribute__((used)) static void FUNC8(struct rvu *rvu, int pcifunc, int blktype)
{
	struct rvu_pfvf *pfvf = FUNC3(rvu, pcifunc);
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	int slot, lf, num_lfs;
	int blkaddr;

	blkaddr = FUNC2(rvu, blktype, pcifunc);
	if (blkaddr < 0)
		return;

	block = &hw->block[blkaddr];

	num_lfs = FUNC4(pfvf, block->type);
	if (!num_lfs)
		return;

	for (slot = 0; slot < num_lfs; slot++) {
		lf = FUNC5(rvu, block, pcifunc, slot);
		if (lf < 0) /* This should never happen */
			continue;

		/* Disable the LF */
		FUNC7(rvu, blkaddr, block->lfcfg_reg |
			    (lf << block->lfshift), 0x00ULL);

		/* Update SW maintained mapping info as well */
		FUNC6(rvu, pfvf, block,
				    pcifunc, lf, false);

		/* Free the resource */
		FUNC1(&block->lf, lf);

		/* Clear MSIX vector offset for this LF */
		FUNC0(rvu, pfvf, block, lf);
	}
}
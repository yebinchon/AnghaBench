#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_4__ {int /*<<< orphan*/  bmap; } ;
struct rvu_pfvf {TYPE_2__ msix; } ;
struct rvu_hwinfo {int total_pfs; int total_vfs; struct rvu_block* block; } ;
struct TYPE_3__ {int /*<<< orphan*/  bmap; } ;
struct rvu_block {TYPE_1__ lf; } ;
struct rvu {int /*<<< orphan*/  rsrc_lock; int /*<<< orphan*/  msix_base_iova; int /*<<< orphan*/  dev; struct rvu_pfvf* hwvf; struct rvu_pfvf* pf; struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int BLK_COUNT ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int PCI_MSIX_ENTRY_SIZE ; 
 int /*<<< orphan*/  RVU_PRIV_CONST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*) ; 
 int FUNC6 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rvu *rvu)
{
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	struct rvu_pfvf  *pfvf;
	int id, max_msix;
	u64 cfg;

	FUNC4(rvu);
	FUNC5(rvu);
	FUNC3(rvu);

	/* Free block LF bitmaps */
	for (id = 0; id < BLK_COUNT; id++) {
		block = &hw->block[id];
		FUNC1(block->lf.bmap);
	}

	/* Free MSIX bitmaps */
	for (id = 0; id < hw->total_pfs; id++) {
		pfvf = &rvu->pf[id];
		FUNC1(pfvf->msix.bmap);
	}

	for (id = 0; id < hw->total_vfs; id++) {
		pfvf = &rvu->hwvf[id];
		FUNC1(pfvf->msix.bmap);
	}

	/* Unmap MSIX vector base IOVA mapping */
	if (!rvu->msix_base_iova)
		return;
	cfg = FUNC6(rvu, BLKADDR_RVUM, RVU_PRIV_CONST);
	max_msix = cfg & 0xFFFFF;
	FUNC0(rvu->dev, rvu->msix_base_iova,
			   max_msix * PCI_MSIX_ENTRY_SIZE,
			   DMA_BIDIRECTIONAL, 0);

	FUNC2(&rvu->rsrc_lock);
}
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
struct rvu_hwinfo {struct rvu_block* block; } ;
struct rvu_block {int /*<<< orphan*/  aq; } ;
struct rvu {int /*<<< orphan*/  dev; struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  bmap; } ;
struct nix_txsch {TYPE_1__ schq; } ;
struct nix_mcast {int /*<<< orphan*/  mce_lock; int /*<<< orphan*/  mcast_buf; int /*<<< orphan*/  mce_ctx; } ;
struct nix_hw {struct nix_mcast mcast; struct nix_txsch* txsch; } ;

/* Variables and functions */
 int BLKADDR_NIX0 ; 
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int NIX_TXSCH_LVL_CNT ; 
 struct nix_hw* FUNC0 (struct rvu_hwinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct rvu *rvu)
{
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	struct nix_txsch *txsch;
	struct nix_mcast *mcast;
	struct nix_hw *nix_hw;
	int blkaddr, lvl;

	blkaddr = FUNC5(rvu, BLKTYPE_NIX, 0);
	if (blkaddr < 0)
		return;

	block = &hw->block[blkaddr];
	FUNC4(rvu, block->aq);

	if (blkaddr == BLKADDR_NIX0) {
		nix_hw = FUNC0(rvu->hw, blkaddr);
		if (!nix_hw)
			return;

		for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
			txsch = &nix_hw->txsch[lvl];
			FUNC1(txsch->schq.bmap);
		}

		mcast = &nix_hw->mcast;
		FUNC3(rvu->dev, mcast->mce_ctx);
		FUNC3(rvu->dev, mcast->mcast_buf);
		FUNC2(&mcast->mce_lock);
	}
}
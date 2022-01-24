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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct rvu_hwinfo {int /*<<< orphan*/ * block; } ;
struct rvu {int /*<<< orphan*/  dev; int /*<<< orphan*/  rsrc_lock; struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {int max; } ;
struct nix_txsch {scalar_t__* pfvf_map; TYPE_1__ schq; } ;
struct nix_hw {struct nix_txsch* txsch; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int EINVAL ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int /*<<< orphan*/  NIX_AF_NDC_TX_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NIX_TXSCH_LVL_CNT ; 
 size_t NIX_TXSCH_LVL_SMQ ; 
 int NIX_TXSCH_LVL_TL1 ; 
 int NIX_TXSCH_LVL_TL2 ; 
 int NIX_TXSCH_LVL_TL4 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct nix_hw* FUNC4 (struct rvu_hwinfo*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rvu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rvu*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct rvu *rvu, u16 pcifunc)
{
	int blkaddr, nixlf, lvl, schq, err;
	struct rvu_hwinfo *hw = rvu->hw;
	struct nix_txsch *txsch;
	struct nix_hw *nix_hw;
	u64 cfg;

	blkaddr = FUNC9(rvu, BLKTYPE_NIX, pcifunc);
	if (blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	nix_hw = FUNC4(rvu->hw, blkaddr);
	if (!nix_hw)
		return -EINVAL;

	nixlf = FUNC10(rvu, &hw->block[blkaddr], pcifunc, 0);
	if (nixlf < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	/* Disable TL2/3 queue links before SMQ flush*/
	FUNC5(&rvu->rsrc_lock);
	for (lvl = NIX_TXSCH_LVL_TL4; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
		if (lvl != NIX_TXSCH_LVL_TL2 && lvl != NIX_TXSCH_LVL_TL4)
			continue;

		txsch = &nix_hw->txsch[lvl];
		for (schq = 0; schq < txsch->schq.max; schq++) {
			if (FUNC2(txsch->pfvf_map[schq]) != pcifunc)
				continue;
			FUNC7(rvu, blkaddr, lvl, schq);
		}
	}

	/* Flush SMQs */
	txsch = &nix_hw->txsch[NIX_TXSCH_LVL_SMQ];
	for (schq = 0; schq < txsch->schq.max; schq++) {
		if (FUNC2(txsch->pfvf_map[schq]) != pcifunc)
			continue;
		cfg = FUNC12(rvu, blkaddr, FUNC1(schq));
		/* Do SMQ flush and set enqueue xoff */
		cfg |= FUNC0(50) | FUNC0(49);
		FUNC13(rvu, blkaddr, FUNC1(schq), cfg);

		/* Wait for flush to complete */
		err = FUNC11(rvu, blkaddr,
				   FUNC1(schq), FUNC0(49), true);
		if (err) {
			FUNC3(rvu->dev,
				"NIXLF%d: SMQ%d flush failed\n", nixlf, schq);
		}
	}

	/* Now free scheduler queues to free pool */
	for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
		/* Free all SCHQ's except TL1 as
		 * TL1 is shared across all VF's for a RVU PF
		 */
		if (lvl == NIX_TXSCH_LVL_TL1)
			continue;

		txsch = &nix_hw->txsch[lvl];
		for (schq = 0; schq < txsch->schq.max; schq++) {
			if (FUNC2(txsch->pfvf_map[schq]) != pcifunc)
				continue;
			FUNC8(&txsch->schq, schq);
			txsch->pfvf_map[schq] = 0;
		}
	}
	FUNC6(&rvu->rsrc_lock);

	/* Sync cached info for this LF in NDC-TX to LLC/DRAM */
	FUNC13(rvu, blkaddr, NIX_AF_NDC_TX_SYNC, FUNC0(12) | nixlf);
	err = FUNC11(rvu, blkaddr, NIX_AF_NDC_TX_SYNC, FUNC0(12), true);
	if (err)
		FUNC3(rvu->dev, "NDC-TX sync failed for NIXLF %d\n", nixlf);

	return 0;
}
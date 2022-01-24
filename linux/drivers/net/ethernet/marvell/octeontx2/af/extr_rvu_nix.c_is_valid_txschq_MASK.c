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
typedef  size_t u16 ;
struct rvu {int /*<<< orphan*/  rsrc_lock; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {size_t max; } ;
struct nix_txsch {int /*<<< orphan*/ * pfvf_map; TYPE_1__ schq; } ;
struct nix_hw {struct nix_txsch* txsch; } ;

/* Variables and functions */
 int NIX_TXSCH_LVL_TL1 ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct nix_hw* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (size_t) ; 

__attribute__((used)) static bool FUNC5(struct rvu *rvu, int blkaddr,
			    int lvl, u16 pcifunc, u16 schq)
{
	struct nix_txsch *txsch;
	struct nix_hw *nix_hw;
	u16 map_func;

	nix_hw = FUNC1(rvu->hw, blkaddr);
	if (!nix_hw)
		return false;

	txsch = &nix_hw->txsch[lvl];
	/* Check out of bounds */
	if (schq >= txsch->schq.max)
		return false;

	FUNC2(&rvu->rsrc_lock);
	map_func = FUNC0(txsch->pfvf_map[schq]);
	FUNC3(&rvu->rsrc_lock);

	/* For TL1 schq, sharing across VF's of same PF is ok */
	if (lvl == NIX_TXSCH_LVL_TL1 &&
	    FUNC4(map_func) != FUNC4(pcifunc))
		return false;

	if (lvl != NIX_TXSCH_LVL_TL1 &&
	    map_func != pcifunc)
		return false;

	return true;
}
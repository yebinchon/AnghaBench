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
typedef  int /*<<< orphan*/  u32 ;
struct rvu {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int max; } ;
struct nix_txsch {int lvl; TYPE_1__ schq; int /*<<< orphan*/  pfvf_map; } ;
struct nix_hw {struct nix_txsch* txsch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NIX_AF_MDQ_CONST ; 
 int NIX_AF_TL1_CONST ; 
 int NIX_AF_TL2_CONST ; 
 int NIX_AF_TL3_CONST ; 
 int NIX_AF_TL4_CONST ; 
 int NIX_TXSCH_LVL_CNT ; 
#define  NIX_TXSCH_LVL_SMQ 132 
#define  NIX_TXSCH_LVL_TL1 131 
#define  NIX_TXSCH_LVL_TL2 130 
#define  NIX_TXSCH_LVL_TL3 129 
#define  NIX_TXSCH_LVL_TL4 128 
 int /*<<< orphan*/  U8_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct rvu*,int,int) ; 

__attribute__((used)) static int FUNC4(struct rvu *rvu, struct nix_hw *nix_hw, int blkaddr)
{
	struct nix_txsch *txsch;
	u64 cfg, reg;
	int err, lvl;

	/* Get scheduler queue count of each type and alloc
	 * bitmap for each for alloc/free/attach operations.
	 */
	for (lvl = 0; lvl < NIX_TXSCH_LVL_CNT; lvl++) {
		txsch = &nix_hw->txsch[lvl];
		txsch->lvl = lvl;
		switch (lvl) {
		case NIX_TXSCH_LVL_SMQ:
			reg = NIX_AF_MDQ_CONST;
			break;
		case NIX_TXSCH_LVL_TL4:
			reg = NIX_AF_TL4_CONST;
			break;
		case NIX_TXSCH_LVL_TL3:
			reg = NIX_AF_TL3_CONST;
			break;
		case NIX_TXSCH_LVL_TL2:
			reg = NIX_AF_TL2_CONST;
			break;
		case NIX_TXSCH_LVL_TL1:
			reg = NIX_AF_TL1_CONST;
			break;
		}
		cfg = FUNC3(rvu, blkaddr, reg);
		txsch->schq.max = cfg & 0xFFFF;
		err = FUNC2(&txsch->schq);
		if (err)
			return err;

		/* Allocate memory for scheduler queues to
		 * PF/VF pcifunc mapping info.
		 */
		txsch->pfvf_map = FUNC0(rvu->dev, txsch->schq.max,
					       sizeof(u32), GFP_KERNEL);
		if (!txsch->pfvf_map)
			return -ENOMEM;
		FUNC1(txsch->pfvf_map, U8_MAX, txsch->schq.max * sizeof(u32));
	}
	return 0;
}
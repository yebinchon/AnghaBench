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
typedef  int u16 ;
struct rvu {int /*<<< orphan*/  rsrc_lock; int /*<<< orphan*/  hw; } ;
struct nix_hw {TYPE_1__* txsch; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pfvf_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int EINVAL ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int NIX_TXSCHQ_TL1_CFG_DONE ; 
 size_t NIX_TXSCH_LVL_TL1 ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int TXSCH_TL1_DFLT_RR_PRIO ; 
 int TXSCH_TL1_DFLT_RR_QTM ; 
 struct nix_hw* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct rvu*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct rvu*,int,int,int) ; 

__attribute__((used)) static int
FUNC12(struct rvu *rvu, u16 pcifunc)
{
	u16 schq_list[2], schq_cnt, schq;
	int blkaddr, idx, err = 0;
	u16 map_func, map_flags;
	struct nix_hw *nix_hw;
	u64 reg, regval;
	u32 *pfvf_map;

	blkaddr = FUNC9(rvu, BLKTYPE_NIX, pcifunc);
	if (blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	nix_hw = FUNC6(rvu->hw, blkaddr);
	if (!nix_hw)
		return -EINVAL;

	pfvf_map = nix_hw->txsch[NIX_TXSCH_LVL_TL1].pfvf_map;

	FUNC7(&rvu->rsrc_lock);

	err = FUNC10(rvu, blkaddr,
				pcifunc, schq_list, &schq_cnt);
	if (err)
		goto unlock;

	for (idx = 0; idx < schq_cnt; idx++) {
		schq = schq_list[idx];
		map_func = FUNC5(pfvf_map[schq]);
		map_flags = FUNC4(pfvf_map[schq]);

		/* check if config is already done or this is pf */
		if (map_flags & NIX_TXSCHQ_TL1_CFG_DONE)
			continue;

		/* default configuration */
		reg = FUNC2(schq);
		regval = (TXSCH_TL1_DFLT_RR_PRIO << 1);
		FUNC11(rvu, blkaddr, reg, regval);
		reg = FUNC1(schq);
		regval = TXSCH_TL1_DFLT_RR_QTM;
		FUNC11(rvu, blkaddr, reg, regval);
		reg = FUNC0(schq);
		regval = 0;
		FUNC11(rvu, blkaddr, reg, regval);

		map_flags |= NIX_TXSCHQ_TL1_CFG_DONE;
		pfvf_map[schq] = FUNC3(map_func, map_flags);
	}
unlock:
	FUNC8(&rvu->rsrc_lock);
	return err;
}
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
typedef  size_t u16 ;
struct rvu_hwinfo {int /*<<< orphan*/ * block; } ;
struct rvu {int /*<<< orphan*/  rsrc_lock; struct rvu_hwinfo* hw; } ;
struct TYPE_2__ {size_t pcifunc; } ;
struct nix_txschq_config {size_t lvl; int num_regs; int* reg; int* regval; TYPE_1__ hdr; } ;
struct nix_txsch {int /*<<< orphan*/  lvl; int /*<<< orphan*/ * pfvf_map; } ;
struct nix_hw {struct nix_txsch* txsch; } ;
struct msg_rsp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int EINVAL ; 
 int MAX_REGS_PER_MBOX_MSG ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int NIX_AF_INVAL_TXSCHQ_CFG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NIX_AF_SMQ_FLUSH_FAILED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t NIX_TXSCHQ_TL1_CFG_DONE ; 
 size_t NIX_TXSCH_LVL_CNT ; 
 size_t NIX_TXSCH_LVL_TL1 ; 
 size_t RVU_PFVF_FUNC_MASK ; 
 size_t FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXSCHQ_IDX_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 struct nix_hw* FUNC8 (struct rvu_hwinfo*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rvu*,size_t,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct rvu*,size_t) ; 
 int FUNC13 (struct rvu*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC14 (struct rvu*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct rvu*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct rvu*,int,int,int) ; 

int FUNC17(struct rvu *rvu,
				    struct nix_txschq_config *req,
				    struct msg_rsp *rsp)
{
	u16 schq, pcifunc = req->hdr.pcifunc;
	struct rvu_hwinfo *hw = rvu->hw;
	u64 reg, regval, schq_regbase;
	struct nix_txsch *txsch;
	u16 map_func, map_flags;
	struct nix_hw *nix_hw;
	int blkaddr, idx, err;
	u32 *pfvf_map;
	int nixlf;

	if (req->lvl >= NIX_TXSCH_LVL_CNT ||
	    req->num_regs > MAX_REGS_PER_MBOX_MSG)
		return NIX_AF_INVAL_TXSCHQ_CFG;

	blkaddr = FUNC13(rvu, BLKTYPE_NIX, pcifunc);
	if (blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	nix_hw = FUNC8(rvu->hw, blkaddr);
	if (!nix_hw)
		return -EINVAL;

	nixlf = FUNC14(rvu, &hw->block[blkaddr], pcifunc, 0);
	if (nixlf < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	txsch = &nix_hw->txsch[req->lvl];
	pfvf_map = txsch->pfvf_map;

	/* VF is only allowed to trigger
	 * setting default cfg on TL1
	 */
	if (pcifunc & RVU_PFVF_FUNC_MASK &&
	    req->lvl == NIX_TXSCH_LVL_TL1) {
		return FUNC12(rvu, pcifunc);
	}

	for (idx = 0; idx < req->num_regs; idx++) {
		reg = req->reg[idx];
		regval = req->regval[idx];
		schq_regbase = reg & 0xFFFF;

		if (!FUNC9(rvu, pcifunc, blkaddr,
					    txsch->lvl, reg, regval))
			return NIX_AF_INVAL_TXSCHQ_CFG;

		/* Replace PF/VF visible NIXLF slot with HW NIXLF id */
		if (schq_regbase == FUNC1(0)) {
			nixlf = FUNC14(rvu, &hw->block[blkaddr],
					   pcifunc, 0);
			regval &= ~(0x7FULL << 24);
			regval |= ((u64)nixlf << 24);
		}

		/* Mark config as done for TL1 by PF */
		if (schq_regbase >= FUNC3(0) &&
		    schq_regbase <= FUNC2(0)) {
			schq = FUNC4(reg, TXSCHQ_IDX_SHIFT);

			FUNC10(&rvu->rsrc_lock);

			map_func = FUNC7(pfvf_map[schq]);
			map_flags = FUNC6(pfvf_map[schq]);

			map_flags |= NIX_TXSCHQ_TL1_CFG_DONE;
			pfvf_map[schq] = FUNC5(map_func, map_flags);
			FUNC11(&rvu->rsrc_lock);
		}

		FUNC16(rvu, blkaddr, reg, regval);

		/* Check for SMQ flush, if so, poll for its completion */
		if (schq_regbase == FUNC1(0) &&
		    (regval & FUNC0(49))) {
			err = FUNC15(rvu, blkaddr,
					   reg, FUNC0(49), true);
			if (err)
				return NIX_AF_SMQ_FLUSH_FAILED;
		}
	}
	return 0;
}
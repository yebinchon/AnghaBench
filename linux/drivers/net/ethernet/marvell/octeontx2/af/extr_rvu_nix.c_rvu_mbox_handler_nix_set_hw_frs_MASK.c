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
typedef  int u8 ;
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct rvu_hwinfo {int cgx_links; int lbk_links; int lmac_per_cgx; int /*<<< orphan*/  sdp_links; } ;
struct rvu {int /*<<< orphan*/ * pf2cgxlmac_map; int /*<<< orphan*/  rsrc_lock; struct rvu_hwinfo* hw; } ;
struct TYPE_4__ {int max; } ;
struct nix_txsch {int /*<<< orphan*/ * pfvf_map; TYPE_2__ schq; } ;
struct nix_hw {struct nix_txsch* txsch; } ;
struct TYPE_3__ {scalar_t__ pcifunc; } ;
struct nix_frs_cfg {int maxlen; int minlen; scalar_t__ sdp_link; scalar_t__ update_minlen; int /*<<< orphan*/  update_smq; TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int CGX_FIFO_LEN ; 
 int EINVAL ; 
 int NIC_HW_MAX_FRS ; 
 int NIC_HW_MIN_FRS ; 
 int NIX_AF_ERR_AF_LF_INVALID ; 
 int NIX_AF_ERR_FRS_INVALID ; 
 int NIX_AF_ERR_RX_LINK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t NIX_TXSCH_LVL_SMQ ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct nix_hw* FUNC6 (struct rvu_hwinfo*,int) ; 
 scalar_t__ FUNC7 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rvu*,struct nix_frs_cfg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,struct rvu*) ; 
 int FUNC12 (struct rvu*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

int FUNC17(struct rvu *rvu, struct nix_frs_cfg *req,
				    struct msg_rsp *rsp)
{
	struct rvu_hwinfo *hw = rvu->hw;
	u16 pcifunc = req->hdr.pcifunc;
	int pf = FUNC14(pcifunc);
	int blkaddr, schq, link = -1;
	struct nix_txsch *txsch;
	u64 cfg, lmac_fifo_len;
	struct nix_hw *nix_hw;
	u8 cgx = 0, lmac = 0;

	blkaddr = FUNC12(rvu, BLKTYPE_NIX, pcifunc);
	if (blkaddr < 0)
		return NIX_AF_ERR_AF_LF_INVALID;

	nix_hw = FUNC6(rvu->hw, blkaddr);
	if (!nix_hw)
		return -EINVAL;

	if (!req->sdp_link && req->maxlen > NIC_HW_MAX_FRS)
		return NIX_AF_ERR_FRS_INVALID;

	if (req->update_minlen && req->minlen < NIC_HW_MIN_FRS)
		return NIX_AF_ERR_FRS_INVALID;

	/* Check if requester wants to update SMQ's */
	if (!req->update_smq)
		goto rx_frscfg;

	/* Update min/maxlen in each of the SMQ attached to this PF/VF */
	txsch = &nix_hw->txsch[NIX_TXSCH_LVL_SMQ];
	FUNC8(&rvu->rsrc_lock);
	for (schq = 0; schq < txsch->schq.max; schq++) {
		if (FUNC4(txsch->pfvf_map[schq]) != pcifunc)
			continue;
		cfg = FUNC15(rvu, blkaddr, FUNC1(schq));
		cfg = (cfg & ~(0xFFFFULL << 8)) | ((u64)req->maxlen << 8);
		if (req->update_minlen)
			cfg = (cfg & ~0x7FULL) | ((u64)req->minlen & 0x7F);
		FUNC16(rvu, blkaddr, FUNC1(schq), cfg);
	}
	FUNC9(&rvu->rsrc_lock);

rx_frscfg:
	/* Check if config is for SDP link */
	if (req->sdp_link) {
		if (!hw->sdp_links)
			return NIX_AF_ERR_RX_LINK_INVALID;
		link = hw->cgx_links + hw->lbk_links;
		goto linkcfg;
	}

	/* Check if the request is from CGX mapped RVU PF */
	if (FUNC7(rvu, pf)) {
		/* Get CGX and LMAC to which this PF is mapped and find link */
		FUNC13(rvu->pf2cgxlmac_map[pf], &cgx, &lmac);
		link = (cgx * hw->lmac_per_cgx) + lmac;
	} else if (pf == 0) {
		/* For VFs of PF0 ingress is LBK port, so config LBK link */
		link = hw->cgx_links;
	}

	if (link < 0)
		return NIX_AF_ERR_RX_LINK_INVALID;

	FUNC10(rvu, req, pcifunc);

linkcfg:
	cfg = FUNC15(rvu, blkaddr, FUNC0(link));
	cfg = (cfg & ~(0xFFFFULL << 16)) | ((u64)req->maxlen << 16);
	if (req->update_minlen)
		cfg = (cfg & ~0xFFFFULL) | req->minlen;
	FUNC16(rvu, blkaddr, FUNC0(link), cfg);

	if (req->sdp_link || pf == 0)
		return 0;

	/* Update transmit credits for CGX links */
	lmac_fifo_len =
		CGX_FIFO_LEN / FUNC5(FUNC11(cgx, rvu));
	cfg = FUNC15(rvu, blkaddr, FUNC3(link));
	cfg &= ~(0xFFFFFULL << 12);
	cfg |=  ((lmac_fifo_len - req->maxlen) / 16) << 12;
	FUNC16(rvu, blkaddr, FUNC3(link), cfg);
	FUNC16(rvu, blkaddr, FUNC2(link), cfg);

	return 0;
}
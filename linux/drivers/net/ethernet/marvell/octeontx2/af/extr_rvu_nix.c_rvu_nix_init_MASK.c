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
typedef  int u64 ;
struct rvu_hwinfo {int cgx; int lmac_per_cgx; int cgx_links; int lbk_links; int sdp_links; int /*<<< orphan*/  nix0; struct rvu_block* block; } ;
struct rvu_block {int dummy; } ;
struct rvu {int /*<<< orphan*/  dev; struct rvu_hwinfo* hw; } ;
struct nix_hw {int dummy; } ;

/* Variables and functions */
 int BLKADDR_NIX0 ; 
 int /*<<< orphan*/  BLKTYPE_NIX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NIX_AF_CFG ; 
 int /*<<< orphan*/  NIX_AF_CINT_DELAY ; 
 int /*<<< orphan*/  NIX_AF_CONST ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_IIP4 ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_IIP6 ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_ISCTP ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_ITCP ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_IUDP ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_OIP4 ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_OIP6 ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_OL2 ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_OSCTP ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_OTCP ; 
 int /*<<< orphan*/  NIX_AF_RX_DEF_OUDP ; 
 int NPC_LID_LA ; 
 int NPC_LID_LC ; 
 int NPC_LID_LD ; 
 int NPC_LID_LF ; 
 int NPC_LID_LG ; 
 int NPC_LT_LA_ETHER ; 
 int NPC_LT_LC_IP ; 
 int NPC_LT_LC_IP6 ; 
 int NPC_LT_LD_SCTP ; 
 int NPC_LT_LD_TCP ; 
 int NPC_LT_LD_UDP ; 
 int NPC_LT_LF_TU_IP ; 
 int NPC_LT_LF_TU_IP6 ; 
 int NPC_LT_LG_TU_SCTP ; 
 int NPC_LT_LG_TU_TCP ; 
 int NPC_LT_LG_TU_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rvu*) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rvu*,struct rvu_block*) ; 
 int FUNC4 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int) ; 
 int FUNC6 (struct rvu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

int FUNC13(struct rvu *rvu)
{
	struct rvu_hwinfo *hw = rvu->hw;
	struct rvu_block *block;
	int blkaddr, err;
	u64 cfg;

	blkaddr = FUNC10(rvu, BLKTYPE_NIX, 0);
	if (blkaddr < 0)
		return 0;
	block = &hw->block[blkaddr];

	/* As per a HW errata in 9xxx A0 silicon, NIX may corrupt
	 * internal state when conditional clocks are turned off.
	 * Hence enable them.
	 */
	if (FUNC1(rvu))
		FUNC12(rvu, blkaddr, NIX_AF_CFG,
			    FUNC11(rvu, blkaddr, NIX_AF_CFG) | 0x5EULL);

	/* Calibrate X2P bus to check if CGX/LBK links are fine */
	err = FUNC4(rvu, blkaddr);
	if (err)
		return err;

	/* Set num of links of each type */
	cfg = FUNC11(rvu, blkaddr, NIX_AF_CONST);
	hw->cgx = (cfg >> 12) & 0xF;
	hw->lmac_per_cgx = (cfg >> 8) & 0xF;
	hw->cgx_links = hw->cgx * hw->lmac_per_cgx;
	hw->lbk_links = 1;
	hw->sdp_links = 1;

	/* Initialize admin queue */
	err = FUNC3(rvu, block);
	if (err)
		return err;

	/* Restore CINT timer delay to HW reset values */
	FUNC12(rvu, blkaddr, NIX_AF_CINT_DELAY, 0x0ULL);

	if (blkaddr == BLKADDR_NIX0) {
		hw->nix0 = FUNC0(rvu->dev,
					sizeof(struct nix_hw), GFP_KERNEL);
		if (!hw->nix0)
			return -ENOMEM;

		err = FUNC9(rvu, hw->nix0, blkaddr);
		if (err)
			return err;

		err = FUNC2(rvu, hw->nix0, blkaddr);
		if (err)
			return err;

		err = FUNC8(rvu, hw->nix0, blkaddr);
		if (err)
			return err;

		/* Configure segmentation offload formats */
		FUNC7(rvu, hw->nix0, blkaddr);

		/* Config Outer/Inner L2, IP, TCP, UDP and SCTP NPC layer info.
		 * This helps HW protocol checker to identify headers
		 * and validate length and checksums.
		 */
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_OL2,
			    (NPC_LID_LA << 8) | (NPC_LT_LA_ETHER << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_OIP4,
			    (NPC_LID_LC << 8) | (NPC_LT_LC_IP << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_IIP4,
			    (NPC_LID_LF << 8) | (NPC_LT_LF_TU_IP << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_OIP6,
			    (NPC_LID_LC << 8) | (NPC_LT_LC_IP6 << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_IIP6,
			    (NPC_LID_LF << 8) | (NPC_LT_LF_TU_IP6 << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_OTCP,
			    (NPC_LID_LD << 8) | (NPC_LT_LD_TCP << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_ITCP,
			    (NPC_LID_LG << 8) | (NPC_LT_LG_TU_TCP << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_OUDP,
			    (NPC_LID_LD << 8) | (NPC_LT_LD_UDP << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_IUDP,
			    (NPC_LID_LG << 8) | (NPC_LT_LG_TU_UDP << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_OSCTP,
			    (NPC_LID_LD << 8) | (NPC_LT_LD_SCTP << 4) | 0x0F);
		FUNC12(rvu, blkaddr, NIX_AF_RX_DEF_ISCTP,
			    (NPC_LID_LG << 8) | (NPC_LT_LG_TU_SCTP << 4) |
			    0x0F);

		err = FUNC6(rvu, blkaddr);
		if (err)
			return err;

		/* Initialize CGX/LBK/SDP link credits, min/max pkt lengths */
		FUNC5(rvu, blkaddr);
	}
	return 0;
}
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
struct rvu_hwinfo {int cgx_links; int lbk_links; int cgx; int lmac_per_cgx; scalar_t__ sdp_links; } ;
struct rvu {struct rvu_hwinfo* hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CGX_FIFO_LEN ; 
 int NIC_HW_MAX_FRS ; 
 int NIC_HW_MIN_FRS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SDP_HW_MAX_FRS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct rvu*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rvu *rvu, int blkaddr)
{
	struct rvu_hwinfo *hw = rvu->hw;
	int cgx, lmac_cnt, slink, link;
	u64 tx_credits;

	/* Set default min/max packet lengths allowed on NIX Rx links.
	 *
	 * With HW reset minlen value of 60byte, HW will treat ARP pkts
	 * as undersize and report them to SW as error pkts, hence
	 * setting it to 40 bytes.
	 */
	for (link = 0; link < (hw->cgx_links + hw->lbk_links); link++) {
		FUNC6(rvu, blkaddr, FUNC1(link),
			    NIC_HW_MAX_FRS << 16 | NIC_HW_MIN_FRS);
	}

	if (hw->sdp_links) {
		link = hw->cgx_links + hw->lbk_links;
		FUNC6(rvu, blkaddr, FUNC1(link),
			    SDP_HW_MAX_FRS << 16 | NIC_HW_MIN_FRS);
	}

	/* Set credits for Tx links assuming max packet length allowed.
	 * This will be reconfigured based on MTU set for PF/VF.
	 */
	for (cgx = 0; cgx < hw->cgx; cgx++) {
		lmac_cnt = FUNC4(FUNC5(cgx, rvu));
		tx_credits = ((CGX_FIFO_LEN / lmac_cnt) - NIC_HW_MAX_FRS) / 16;
		/* Enable credits and set credit pkt count to max allowed */
		tx_credits =  (tx_credits << 12) | (0x1FF << 2) | FUNC0(1);
		slink = cgx * hw->lmac_per_cgx;
		for (link = slink; link < (slink + lmac_cnt); link++) {
			FUNC6(rvu, blkaddr,
				    FUNC3(link),
				    tx_credits);
			FUNC6(rvu, blkaddr,
				    FUNC2(link),
				    tx_credits);
		}
	}

	/* Set Tx credits for LBK link */
	slink = hw->cgx_links;
	for (link = slink; link < (slink + hw->lbk_links); link++) {
		tx_credits = 1000; /* 10 * max LBK datarate = 10 * 100Gbps */
		/* Enable credits and set credit pkt count to max allowed */
		tx_credits =  (tx_credits << 12) | (0x1FF << 2) | FUNC0(1);
		FUNC6(rvu, blkaddr,
			    FUNC3(link), tx_credits);
		FUNC6(rvu, blkaddr,
			    FUNC2(link), tx_credits);
	}
}
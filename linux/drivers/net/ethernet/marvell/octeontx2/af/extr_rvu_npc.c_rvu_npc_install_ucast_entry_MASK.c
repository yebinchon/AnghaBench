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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct rvu_pfvf {int /*<<< orphan*/  entry; } ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int dummy; } ;
struct nix_rx_action {int /*<<< orphan*/  pf_func; int /*<<< orphan*/  op; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct mcam_entry {int* kw; int* kw_mask; int action; int vtag_action; TYPE_2__ member_0; } ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_3__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int ETH_ALEN ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NIXLF_UCAST_ENTRY ; 
 int /*<<< orphan*/  NIX_INTF_RX ; 
 int /*<<< orphan*/  NIX_RX_ACTIONOP_UCAST ; 
 int NPC_LID_LA ; 
 int NPC_LT_LB_CTAG ; 
 int NPC_LT_LB_STAG ; 
 int NPC_PARSE_RESULT_DMAC_OFFSET ; 
 int /*<<< orphan*/  VTAG0_LID_MASK ; 
 int /*<<< orphan*/  VTAG0_RELPTR_MASK ; 
 int /*<<< orphan*/  VTAG0_TYPE_MASK ; 
 int VTAG0_VALID_BIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rvu*,struct npc_mcam*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mcam_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,struct npc_mcam*,int,int,int /*<<< orphan*/ ,struct mcam_entry*,int) ; 
 int FUNC6 (struct rvu*,struct npc_mcam*,int,int) ; 
 int FUNC7 (struct npc_mcam*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC9 (struct rvu*,int /*<<< orphan*/ ) ; 

void FUNC10(struct rvu *rvu, u16 pcifunc,
				 int nixlf, u64 chan, u8 *mac_addr)
{
	struct rvu_pfvf *pfvf = FUNC9(rvu, pcifunc);
	struct npc_mcam *mcam = &rvu->hw->mcam;
	struct mcam_entry entry = { 0 };
	struct nix_rx_action action;
	int blkaddr, index, kwi;
	u64 mac = 0;

	/* AF's VFs work in promiscuous mode */
	if (FUNC2(pcifunc))
		return;

	blkaddr = FUNC8(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return;

	for (index = ETH_ALEN - 1; index >= 0; index--)
		mac |= ((u64)*mac_addr++) << (8 * index);

	index = FUNC7(mcam, pcifunc,
					 nixlf, NIXLF_UCAST_ENTRY);

	/* Match ingress channel and DMAC */
	entry.kw[0] = chan;
	entry.kw_mask[0] = 0xFFFULL;

	kwi = NPC_PARSE_RESULT_DMAC_OFFSET / sizeof(u64);
	entry.kw[kwi] = mac;
	entry.kw_mask[kwi] = FUNC0(48) - 1;

	/* Don't change the action if entry is already enabled
	 * Otherwise RSS action may get overwritten.
	 */
	if (FUNC3(rvu, mcam, blkaddr, index)) {
		*(u64 *)&action = FUNC6(rvu, mcam,
						      blkaddr, index);
	} else {
		*(u64 *)&action = 0x00;
		action.op = NIX_RX_ACTIONOP_UCAST;
		action.pf_func = pcifunc;
	}

	entry.action = *(u64 *)&action;
	FUNC5(rvu, mcam, blkaddr, index,
			      NIX_INTF_RX, &entry, true);

	/* add VLAN matching, setup action and save entry back for later */
	entry.kw[0] |= (NPC_LT_LB_STAG | NPC_LT_LB_CTAG) << 20;
	entry.kw_mask[0] |= (NPC_LT_LB_STAG & NPC_LT_LB_CTAG) << 20;

	entry.vtag_action = VTAG0_VALID_BIT |
			    FUNC1(VTAG0_TYPE_MASK, 0) |
			    FUNC1(VTAG0_LID_MASK, NPC_LID_LA) |
			    FUNC1(VTAG0_RELPTR_MASK, 12);

	FUNC4(&pfvf->entry, &entry, sizeof(entry));
}
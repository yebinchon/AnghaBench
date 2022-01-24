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
typedef  void* u64 ;
typedef  int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int dummy; } ;
struct nix_rx_action {scalar_t__ op; int pf_func; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct mcam_entry {int* kw_mask; void* action; void** kw; TYPE_2__ member_0; } ;
struct TYPE_3__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int /*<<< orphan*/  NIXLF_PROMISC_ENTRY ; 
 int /*<<< orphan*/  NIXLF_UCAST_ENTRY ; 
 int /*<<< orphan*/  NIX_INTF_RX ; 
 scalar_t__ NIX_RX_ACTIONOP_RSS ; 
 scalar_t__ NIX_RX_ACTIONOP_UCAST ; 
 int NPC_PARSE_RESULT_DMAC_OFFSET ; 
 int RVU_PFVF_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct rvu*,struct npc_mcam*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,struct npc_mcam*,int,int,int /*<<< orphan*/ ,struct mcam_entry*,int) ; 
 void* FUNC4 (struct rvu*,struct npc_mcam*,int,int) ; 
 int FUNC5 (struct npc_mcam*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct rvu *rvu, u16 pcifunc,
				   int nixlf, u64 chan, bool allmulti)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	int blkaddr, ucast_idx, index, kwi;
	struct mcam_entry entry = { 0 };
	struct nix_rx_action action = { };

	/* Only PF or AF VF can add a promiscuous entry */
	if ((pcifunc & RVU_PFVF_FUNC_MASK) && !FUNC1(pcifunc))
		return;

	blkaddr = FUNC6(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return;

	index = FUNC5(mcam, pcifunc,
					 nixlf, NIXLF_PROMISC_ENTRY);

	entry.kw[0] = chan;
	entry.kw_mask[0] = 0xFFFULL;

	if (allmulti) {
		kwi = NPC_PARSE_RESULT_DMAC_OFFSET / sizeof(u64);
		entry.kw[kwi] = FUNC0(40); /* LSB bit of 1st byte in DMAC */
		entry.kw_mask[kwi] = FUNC0(40);
	}

	ucast_idx = FUNC5(mcam, pcifunc,
					     nixlf, NIXLF_UCAST_ENTRY);

	/* If the corresponding PF's ucast action is RSS,
	 * use the same action for promisc also
	 */
	if (FUNC2(rvu, mcam, blkaddr, ucast_idx))
		*(u64 *)&action = FUNC4(rvu, mcam,
							blkaddr, ucast_idx);

	if (action.op != NIX_RX_ACTIONOP_RSS) {
		*(u64 *)&action = 0x00;
		action.op = NIX_RX_ACTIONOP_UCAST;
		action.pf_func = pcifunc;
	}

	entry.action = *(u64 *)&action;
	FUNC3(rvu, mcam, blkaddr, index,
			      NIX_INTF_RX, &entry, true);
}
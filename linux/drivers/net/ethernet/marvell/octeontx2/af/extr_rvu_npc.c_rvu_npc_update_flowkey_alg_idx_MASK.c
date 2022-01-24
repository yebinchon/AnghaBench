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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int total_entries; int banksize; } ;
struct nix_rx_action {int index; int flow_key_alg; int /*<<< orphan*/  pf_func; int /*<<< orphan*/  op; } ;
struct TYPE_2__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int DEFAULT_RSS_CONTEXT_GROUP ; 
 int /*<<< orphan*/  NIXLF_PROMISC_ENTRY ; 
 int /*<<< orphan*/  NIXLF_UCAST_ENTRY ; 
 int /*<<< orphan*/  NIX_RX_ACTIONOP_RSS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct rvu*,struct npc_mcam*,int,int) ; 
 int FUNC2 (struct npc_mcam*,int) ; 
 int FUNC3 (struct npc_mcam*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct rvu *rvu, u16 pcifunc, int nixlf,
				    int group, int alg_idx, int mcam_index)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	struct nix_rx_action action;
	int blkaddr, index, bank;

	blkaddr = FUNC4(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return;

	/* Check if this is for reserved default entry */
	if (mcam_index < 0) {
		if (group != DEFAULT_RSS_CONTEXT_GROUP)
			return;
		index = FUNC3(mcam, pcifunc,
						 nixlf, NIXLF_UCAST_ENTRY);
	} else {
		/* TODO: validate this mcam index */
		index = mcam_index;
	}

	if (index >= mcam->total_entries)
		return;

	bank = FUNC2(mcam, index);
	index &= (mcam->banksize - 1);

	*(u64 *)&action = FUNC6(rvu, blkaddr,
				     FUNC0(index, bank));
	/* Ignore if no action was set earlier */
	if (!*(u64 *)&action)
		return;

	action.op = NIX_RX_ACTIONOP_RSS;
	action.pf_func = pcifunc;
	action.index = group;
	action.flow_key_alg = alg_idx;

	FUNC7(rvu, blkaddr,
		    FUNC0(index, bank), *(u64 *)&action);

	index = FUNC3(mcam, pcifunc,
					 nixlf, NIXLF_PROMISC_ENTRY);

	/* If PF's promiscuous entry is enabled,
	 * Set RSS action for that entry as well
	 */
	if (FUNC1(rvu, mcam, blkaddr, index)) {
		bank = FUNC2(mcam, index);
		index &= (mcam->banksize - 1);

		FUNC7(rvu, blkaddr,
			    FUNC0(index, bank),
			    *(u64 *)&action);
	}

	FUNC5(rvu, pcifunc, nixlf);
}
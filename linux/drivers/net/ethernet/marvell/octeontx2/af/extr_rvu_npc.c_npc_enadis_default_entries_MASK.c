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
typedef  int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int banksize; } ;
struct nix_rx_action {scalar_t__ op; } ;
struct TYPE_2__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int /*<<< orphan*/  NIXLF_BCAST_ENTRY ; 
 int /*<<< orphan*/  NIXLF_UCAST_ENTRY ; 
 scalar_t__ NIX_RX_ACTIONOP_MCAST ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int RVU_PFVF_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct rvu*,struct npc_mcam*,int,int,int) ; 
 int FUNC2 (struct npc_mcam*,int) ; 
 int FUNC3 (struct npc_mcam*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rvu*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rvu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rvu *rvu, u16 pcifunc,
				       int nixlf, bool enable)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	struct nix_rx_action action;
	int index, bank, blkaddr;

	blkaddr = FUNC4(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return;

	/* Ucast MCAM match entry of this PF/VF */
	index = FUNC3(mcam, pcifunc,
					 nixlf, NIXLF_UCAST_ENTRY);
	FUNC1(rvu, mcam, blkaddr, index, enable);

	/* For PF, ena/dis promisc and bcast MCAM match entries */
	if (pcifunc & RVU_PFVF_FUNC_MASK)
		return;

	/* For bcast, enable/disable only if it's action is not
	 * packet replication, incase if action is replication
	 * then this PF's nixlf is removed from bcast replication
	 * list.
	 */
	index = FUNC3(mcam, pcifunc,
					 nixlf, NIXLF_BCAST_ENTRY);
	bank = FUNC2(mcam, index);
	*(u64 *)&action = FUNC8(rvu, blkaddr,
	     FUNC0(index & (mcam->banksize - 1), bank));
	if (action.op != NIX_RX_ACTIONOP_MCAST)
		FUNC1(rvu, mcam,
				      blkaddr, index, enable);
	if (enable)
		FUNC6(rvu, pcifunc, nixlf);
	else
		FUNC5(rvu, pcifunc, nixlf);

	FUNC7(rvu, pcifunc, nixlf);
}
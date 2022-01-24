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
typedef  int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int dummy; } ;
struct TYPE_2__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int /*<<< orphan*/  NIXLF_PROMISC_ENTRY ; 
 int RVU_PFVF_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rvu*,struct npc_mcam*,int,int,int) ; 
 int FUNC1 (struct npc_mcam*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rvu *rvu, u16 pcifunc,
				     int nixlf, bool enable)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	int blkaddr, index;

	blkaddr = FUNC2(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return;

	/* Only PF's have a promiscuous entry */
	if (pcifunc & RVU_PFVF_FUNC_MASK)
		return;

	index = FUNC1(mcam, pcifunc,
					 nixlf, NIXLF_PROMISC_ENTRY);
	FUNC0(rvu, mcam, blkaddr, index, enable);
}
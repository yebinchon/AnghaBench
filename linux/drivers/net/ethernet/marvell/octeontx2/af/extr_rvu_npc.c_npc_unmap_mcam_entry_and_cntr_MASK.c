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
typedef  int u16 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int /*<<< orphan*/ * cntr_refcnt; int /*<<< orphan*/ * entry2cntr_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  NPC_MCAM_INVALID_MAP ; 
 int FUNC1 (struct npc_mcam*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct rvu *rvu,
					  struct npc_mcam *mcam,
					  int blkaddr, u16 entry, u16 cntr)
{
	u16 index = entry & (mcam->banksize - 1);
	u16 bank = FUNC1(mcam, entry);

	/* Remove mapping and reduce counter's refcnt */
	mcam->entry2cntr_map[entry] = NPC_MCAM_INVALID_MAP;
	mcam->cntr_refcnt[cntr]--;
	/* Disable stats */
	FUNC2(rvu, blkaddr,
		    FUNC0(index, bank), 0x00);
}
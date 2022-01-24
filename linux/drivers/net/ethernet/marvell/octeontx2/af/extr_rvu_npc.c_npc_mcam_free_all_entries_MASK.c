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
typedef  size_t u16 ;
struct rvu {int dummy; } ;
struct npc_mcam {size_t bmap_entries; size_t* entry2pfvf_map; size_t* entry2cntr_map; } ;

/* Variables and functions */
 size_t NPC_MCAM_INVALID_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct rvu*,struct npc_mcam*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct npc_mcam*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,struct npc_mcam*,int,size_t,size_t) ; 

__attribute__((used)) static void FUNC3(struct rvu *rvu, struct npc_mcam *mcam,
				      int blkaddr, u16 pcifunc)
{
	u16 index, cntr;

	/* Scan all MCAM entries and free the ones mapped to 'pcifunc' */
	for (index = 0; index < mcam->bmap_entries; index++) {
		if (mcam->entry2pfvf_map[index] == pcifunc) {
			mcam->entry2pfvf_map[index] = NPC_MCAM_INVALID_MAP;
			/* Free the entry in bitmap */
			FUNC1(mcam, index);
			/* Disable the entry */
			FUNC0(rvu, mcam, blkaddr, index, false);

			/* Update entry2counter mapping */
			cntr = mcam->entry2cntr_map[index];
			if (cntr != NPC_MCAM_INVALID_MAP)
				FUNC2(rvu, mcam,
							      blkaddr, index,
							      cntr);
		}
	}
}
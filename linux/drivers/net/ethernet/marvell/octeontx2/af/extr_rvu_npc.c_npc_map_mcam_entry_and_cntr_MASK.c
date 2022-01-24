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
struct npc_mcam {int banksize; int* entry2cntr_map; int /*<<< orphan*/ * cntr_refcnt; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct npc_mcam*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rvu *rvu, struct npc_mcam *mcam,
					int blkaddr, u16 entry, u16 cntr)
{
	u16 index = entry & (mcam->banksize - 1);
	u16 bank = FUNC2(mcam, entry);

	/* Set mapping and increment counter's refcnt */
	mcam->entry2cntr_map[entry] = cntr;
	mcam->cntr_refcnt[cntr]++;
	/* Enable stats */
	FUNC3(rvu, blkaddr,
		    FUNC1(index, bank),
		    FUNC0(9) | cntr);
}
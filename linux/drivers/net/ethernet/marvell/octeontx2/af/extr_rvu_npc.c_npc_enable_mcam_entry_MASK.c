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
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int banks_per_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct npc_mcam*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct rvu *rvu, struct npc_mcam *mcam,
				  int blkaddr, int index, bool enable)
{
	int bank = FUNC1(mcam, index);
	int actbank = bank;

	index &= (mcam->banksize - 1);
	for (; bank < (actbank + mcam->banks_per_entry); bank++) {
		FUNC2(rvu, blkaddr,
			    FUNC0(index, bank),
			    enable ? 1 : 0);
	}
}
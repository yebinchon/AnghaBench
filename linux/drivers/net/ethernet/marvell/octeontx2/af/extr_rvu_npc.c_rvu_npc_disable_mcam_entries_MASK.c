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
typedef  int /*<<< orphan*/  u16 ;
struct rvu {TYPE_1__* hw; } ;
struct npc_mcam {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct npc_mcam mcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKTYPE_NPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,struct npc_mcam*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,struct npc_mcam*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct rvu *rvu, u16 pcifunc, int nixlf)
{
	struct npc_mcam *mcam = &rvu->hw->mcam;
	int blkaddr;

	blkaddr = FUNC4(rvu, BLKTYPE_NPC, 0);
	if (blkaddr < 0)
		return;

	FUNC0(&mcam->lock);

	/* Disable and free all MCAM entries mapped to this 'pcifunc' */
	FUNC3(rvu, mcam, blkaddr, pcifunc);

	/* Free all MCAM counters mapped to this 'pcifunc' */
	FUNC2(rvu, mcam, pcifunc);

	FUNC1(&mcam->lock);

	FUNC5(rvu, pcifunc, nixlf);
}
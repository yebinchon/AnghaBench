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
typedef  int u64 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct npc_mcam*,int) ; 
 int FUNC2 (struct rvu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct rvu *rvu, struct npc_mcam *mcam,
				  int blkaddr, int index)
{
	int bank = FUNC1(mcam, index);
	u64 cfg;

	index &= (mcam->banksize - 1);
	cfg = FUNC2(rvu, blkaddr, FUNC0(index, bank));
	return (cfg & 1);
}
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
typedef  int u64 ;
struct rvu_pfvf {int dummy; } ;
struct TYPE_2__ {int max; int /*<<< orphan*/  bmap; } ;
struct rvu_block {int lfcfg_reg; int lfshift; TYPE_1__ lf; int /*<<< orphan*/  addr; } ;
struct rvu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC2 (struct rvu*,int) ; 
 int FUNC3 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,struct rvu_pfvf*,struct rvu_block*,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct rvu *rvu, struct rvu_block *block)
{
	struct rvu_pfvf *pfvf;
	u64 cfg;
	int lf;

	for (lf = 0; lf < block->lf.max; lf++) {
		cfg = FUNC3(rvu, block->addr,
				 block->lfcfg_reg | (lf << block->lfshift));
		if (!(cfg & FUNC0(63)))
			continue;

		/* Set this resource as being used */
		FUNC1(lf, block->lf.bmap);

		/* Get, to whom this LF is attached */
		pfvf = FUNC2(rvu, (cfg >> 8) & 0xFFFF);
		FUNC5(rvu, pfvf, block,
				    (cfg >> 8) & 0xFFFF, lf, true);

		/* Set start MSIX vector for this LF within this PF/VF */
		FUNC4(rvu, pfvf, block, lf);
	}
}
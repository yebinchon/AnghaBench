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
typedef  size_t u16 ;
struct rvu_pfvf {int /*<<< orphan*/  msix; scalar_t__* msix_lfmap; } ;
struct rvu_block {int msixcfg_reg; int lfshift; int /*<<< orphan*/  addr; } ;
struct rvu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC1 (struct rvu*,struct rvu_pfvf*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct rvu *rvu, struct rvu_pfvf *pfvf,
				  struct rvu_block *block, int lf)
{
	u16 nvecs, vec, offset;
	u64 cfg;

	cfg = FUNC2(rvu, block->addr, block->msixcfg_reg |
			 (lf << block->lfshift));
	nvecs = (cfg >> 12) & 0xFF;

	/* Clear MSIX offset in LF */
	FUNC3(rvu, block->addr, block->msixcfg_reg |
		    (lf << block->lfshift), cfg & ~0x7FFULL);

	offset = FUNC1(rvu, pfvf, block->addr, lf);

	/* Update the mapping */
	for (vec = 0; vec < nvecs; vec++)
		pfvf->msix_lfmap[offset + vec] = 0;

	/* Free the same in MSIX bitmap */
	FUNC0(&pfvf->msix, nvecs, offset);
}
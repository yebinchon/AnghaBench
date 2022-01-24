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
typedef  int u16 ;
struct rvu_pfvf {int /*<<< orphan*/ * msix_lfmap; int /*<<< orphan*/  msix; } ;
struct rvu_block {int msixcfg_reg; int lfshift; int /*<<< orphan*/  addr; } ;
struct rvu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct rvu *rvu, struct rvu_pfvf *pfvf,
				struct rvu_block *block, int lf)
{
	u16 nvecs, vec, offset;
	u64 cfg;

	cfg = FUNC2(rvu, block->addr, block->msixcfg_reg |
			 (lf << block->lfshift));
	nvecs = (cfg >> 12) & 0xFF;

	/* Check and alloc MSIX vectors, must be contiguous */
	if (!FUNC3(&pfvf->msix, nvecs))
		return;

	offset = FUNC1(&pfvf->msix, nvecs);

	/* Config MSIX offset in LF */
	FUNC4(rvu, block->addr, block->msixcfg_reg |
		    (lf << block->lfshift), (cfg & ~0x7FFULL) | offset);

	/* Update the bitmap as well */
	for (vec = 0; vec < nvecs; vec++)
		pfvf->msix_lfmap[offset + vec] = FUNC0(block->addr, lf);
}
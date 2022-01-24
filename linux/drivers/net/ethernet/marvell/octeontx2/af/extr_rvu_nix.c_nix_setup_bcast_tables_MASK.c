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
struct rvu_pfvf {scalar_t__ bcast_mce_idx; int /*<<< orphan*/  bcast_mce_list; } ;
struct rvu {int cgx_mapped_pfs; struct rvu_pfvf* pf; } ;
struct nix_mcast {int dummy; } ;
struct nix_hw {struct nix_mcast mcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int /*<<< orphan*/  NIX_AQ_INSTOP_INIT ; 
 int RVU_PFVF_PF_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nix_mcast*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct rvu*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rvu *rvu, struct nix_hw *nix_hw)
{
	struct nix_mcast *mcast = &nix_hw->mcast;
	int err, pf, numvfs, idx;
	struct rvu_pfvf *pfvf;
	u16 pcifunc;
	u64 cfg;

	/* Skip PF0 (i.e AF) */
	for (pf = 1; pf < (rvu->cgx_mapped_pfs + 1); pf++) {
		cfg = FUNC4(rvu, BLKADDR_RVUM, FUNC0(pf));
		/* If PF is not enabled, nothing to do */
		if (!((cfg >> 20) & 0x01))
			continue;
		/* Get numVFs attached to this PF */
		numvfs = (cfg >> 12) & 0xFF;

		pfvf = &rvu->pf[pf];
		/* Save the start MCE */
		pfvf->bcast_mce_idx = FUNC1(mcast, numvfs + 1);

		FUNC2(&pfvf->bcast_mce_list, numvfs + 1);

		for (idx = 0; idx < (numvfs + 1); idx++) {
			/* idx-0 is for PF, followed by VFs */
			pcifunc = (pf << RVU_PFVF_PF_SHIFT);
			pcifunc |= idx;
			/* Add dummy entries now, so that we don't have to check
			 * for whether AQ_OP should be INIT/WRITE later on.
			 * Will be updated when a NIXLF is attached/detached to
			 * these PF/VFs.
			 */
			err = FUNC3(rvu, pfvf->bcast_mce_idx + idx,
					    NIX_AQ_INSTOP_INIT,
					    pcifunc, 0, true);
			if (err)
				return err;
		}
	}
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int max; } ;
struct rvu_pfvf {TYPE_1__ msix; void* msix_lfmap; } ;
struct rvu_hwinfo {int total_pfs; } ;
struct rvu {scalar_t__ msix_base_iova; int /*<<< orphan*/  dev; struct rvu_pfvf* hwvf; struct rvu_pfvf* pf; struct rvu_hwinfo* hw; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PCI_MSIX_ENTRY_SIZE ; 
 int /*<<< orphan*/  RVU_AF_MSIXTR_BASE ; 
 int /*<<< orphan*/  RVU_PRIV_CONST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rvu*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rvu*,int,int*,int*) ; 
 int FUNC11 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct rvu *rvu)
{
	struct rvu_hwinfo *hw = rvu->hw;
	int pf, vf, numvfs, hwvf, err;
	int nvecs, offset, max_msix;
	struct rvu_pfvf *pfvf;
	u64 cfg, phy_addr;
	dma_addr_t iova;

	for (pf = 0; pf < hw->total_pfs; pf++) {
		cfg = FUNC11(rvu, BLKADDR_RVUM, FUNC1(pf));
		/* If PF is not enabled, nothing to do */
		if (!((cfg >> 20) & 0x01))
			continue;

		FUNC10(rvu, pf, &numvfs, &hwvf);

		pfvf = &rvu->pf[pf];
		/* Get num of MSIX vectors attached to this PF */
		cfg = FUNC11(rvu, BLKADDR_RVUM, FUNC3(pf));
		pfvf->msix.max = ((cfg >> 32) & 0xFFF) + 1;
		FUNC9(rvu, pfvf->msix.max, pf, 0);

		/* Alloc msix bitmap for this PF */
		err = FUNC7(&pfvf->msix);
		if (err)
			return err;

		/* Allocate memory for MSIX vector to RVU block LF mapping */
		pfvf->msix_lfmap = FUNC4(rvu->dev, pfvf->msix.max,
						sizeof(u16), GFP_KERNEL);
		if (!pfvf->msix_lfmap)
			return -ENOMEM;

		/* For PF0 (AF) firmware will set msix vector offsets for
		 * AF, block AF and PF0_INT vectors, so jump to VFs.
		 */
		if (!pf)
			goto setup_vfmsix;

		/* Set MSIX offset for PF's 'RVU_PF_INT_VEC' vectors.
		 * These are allocated on driver init and never freed,
		 * so no need to set 'msix_lfmap' for these.
		 */
		cfg = FUNC11(rvu, BLKADDR_RVUM, FUNC2(pf));
		nvecs = (cfg >> 12) & 0xFF;
		cfg &= ~0x7FFULL;
		offset = FUNC8(&pfvf->msix, nvecs);
		FUNC12(rvu, BLKADDR_RVUM,
			    FUNC2(pf), cfg | offset);
setup_vfmsix:
		/* Alloc msix bitmap for VFs */
		for (vf = 0; vf < numvfs; vf++) {
			pfvf =  &rvu->hwvf[hwvf + vf];
			/* Get num of MSIX vectors attached to this VF */
			cfg = FUNC11(rvu, BLKADDR_RVUM,
					 FUNC3(pf));
			pfvf->msix.max = (cfg & 0xFFF) + 1;
			FUNC9(rvu, pfvf->msix.max, pf, vf + 1);

			/* Alloc msix bitmap for this VF */
			err = FUNC7(&pfvf->msix);
			if (err)
				return err;

			pfvf->msix_lfmap =
				FUNC4(rvu->dev, pfvf->msix.max,
					     sizeof(u16), GFP_KERNEL);
			if (!pfvf->msix_lfmap)
				return -ENOMEM;

			/* Set MSIX offset for HWVF's 'RVU_VF_INT_VEC' vectors.
			 * These are allocated on driver init and never freed,
			 * so no need to set 'msix_lfmap' for these.
			 */
			cfg = FUNC11(rvu, BLKADDR_RVUM,
					 FUNC0(hwvf + vf));
			nvecs = (cfg >> 12) & 0xFF;
			cfg &= ~0x7FFULL;
			offset = FUNC8(&pfvf->msix, nvecs);
			FUNC12(rvu, BLKADDR_RVUM,
				    FUNC0(hwvf + vf),
				    cfg | offset);
		}
	}

	/* HW interprets RVU_AF_MSIXTR_BASE address as an IOVA, hence
	 * create a IOMMU mapping for the physcial address configured by
	 * firmware and reconfig RVU_AF_MSIXTR_BASE with IOVA.
	 */
	cfg = FUNC11(rvu, BLKADDR_RVUM, RVU_PRIV_CONST);
	max_msix = cfg & 0xFFFFF;
	phy_addr = FUNC11(rvu, BLKADDR_RVUM, RVU_AF_MSIXTR_BASE);
	iova = FUNC5(rvu->dev, phy_addr,
				max_msix * PCI_MSIX_ENTRY_SIZE,
				DMA_BIDIRECTIONAL, 0);

	if (FUNC6(rvu->dev, iova))
		return -ENOMEM;

	FUNC12(rvu, BLKADDR_RVUM, RVU_AF_MSIXTR_BASE, (u64)iova);
	rvu->msix_base_iova = iova;

	return 0;
}
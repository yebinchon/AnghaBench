#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct bnxt_vnic_info {int uc_filter_count; int /*<<< orphan*/  rx_mask; scalar_t__ mc_list_count; } ;
struct bnxt {unsigned int rx_nr_rings; int flags; TYPE_1__* dev; struct bnxt_vnic_info* vnic_info; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int BNXT_FLAG_RFS ; 
 int BNXT_FLAG_TPA ; 
 scalar_t__ FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST ; 
 int /*<<< orphan*/  CFA_L2_SET_RX_MASK_REQ_MASK_BCAST ; 
 int /*<<< orphan*/  CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct bnxt*) ; 
 int FUNC7 (struct bnxt*) ; 
 int FUNC8 (struct bnxt*) ; 
 int FUNC9 (struct bnxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct bnxt*) ; 
 int FUNC11 (struct bnxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct bnxt*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct bnxt*) ; 
 int FUNC14 (struct bnxt*,int) ; 
 int FUNC15 (struct bnxt*) ; 
 int FUNC16 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int FUNC21(struct bnxt *bp, bool irq_re_init)
{
	struct bnxt_vnic_info *vnic = &bp->vnic_info[0];
	int rc = 0;
	unsigned int rx_nr_rings = bp->rx_nr_rings;

	if (irq_re_init) {
		rc = FUNC10(bp);
		if (rc) {
			FUNC18(bp->dev, "hwrm stat ctx alloc failure rc: %x\n",
				   rc);
			goto err_out;
		}
	}

	rc = FUNC6(bp);
	if (rc) {
		FUNC18(bp->dev, "hwrm ring alloc failure rc: %x\n", rc);
		goto err_out;
	}

	rc = FUNC7(bp);
	if (rc) {
		FUNC18(bp->dev, "hwrm_ring_grp alloc failure: %x\n", rc);
		goto err_out;
	}

	if (FUNC0(bp))
		rx_nr_rings--;

	/* default vnic 0 */
	rc = FUNC11(bp, 0, 0, rx_nr_rings);
	if (rc) {
		FUNC18(bp->dev, "hwrm vnic alloc failure rc: %x\n", rc);
		goto err_out;
	}

	rc = FUNC16(bp, 0);
	if (rc)
		goto err_out;

	if (bp->flags & BNXT_FLAG_RFS) {
		rc = FUNC2(bp);
		if (rc)
			goto err_out;
	}

	if (bp->flags & BNXT_FLAG_TPA) {
		rc = FUNC14(bp, true);
		if (rc)
			goto err_out;
	}

	if (FUNC1(bp))
		FUNC17(bp);

	/* Filter for default vnic 0 */
	rc = FUNC9(bp, 0, 0, bp->dev->dev_addr);
	if (rc) {
		FUNC18(bp->dev, "HWRM vnic filter failure rc: %x\n", rc);
		goto err_out;
	}
	vnic->uc_filter_count = 1;

	vnic->rx_mask = 0;
	if (bp->dev->flags & IFF_BROADCAST)
		vnic->rx_mask |= CFA_L2_SET_RX_MASK_REQ_MASK_BCAST;

	if ((bp->dev->flags & IFF_PROMISC) && FUNC13(bp))
		vnic->rx_mask |= CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS;

	if (bp->dev->flags & IFF_ALLMULTI) {
		vnic->rx_mask |= CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST;
		vnic->mc_list_count = 0;
	} else {
		u32 mask = 0;

		FUNC12(bp, &mask);
		vnic->rx_mask |= mask;
	}

	rc = FUNC3(bp);
	if (rc)
		goto err_out;

	rc = FUNC8(bp);
	if (rc)
		FUNC20(bp->dev, "HWRM set coalescing failure rc: %x\n",
				rc);

	if (FUNC0(bp)) {
		rc = FUNC15(bp);
		if (rc)
			FUNC18(bp->dev, "Special vnic setup failure for NS2 A0 rc: %x\n",
				   rc);
	}

	if (FUNC1(bp)) {
		FUNC4(bp);
		FUNC19(bp->dev);
	}

	return 0;

err_out:
	FUNC5(bp, 0, true);

	return rc;
}
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
struct pci_dev {int /*<<< orphan*/  enable_cnt; } ;
struct net_device {int dummy; } ;
struct bnx2x {int flags; scalar_t__ doorbells; scalar_t__ regview; int /*<<< orphan*/  wol; int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  fip_mac; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BC_SUPPORTS_RMMOD_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_RMMOD ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETDEV_HW_ADDR_T_SAN ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  OS_DRIVER_STATE_NOT_LOADED ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC16 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*) ; 

__attribute__((used)) static void FUNC29(struct pci_dev *pdev,
			   struct net_device *dev,
			   struct bnx2x *bp,
			   bool remove_netdev)
{
	/* Delete storage MAC address */
	if (!FUNC3(bp)) {
		FUNC26();
		FUNC18(bp->dev, bp->fip_mac, NETDEV_HW_ADDR_T_SAN);
		FUNC27();
	}

#ifdef BCM_DCBNL
	/* Delete app tlvs from dcbnl */
	bnx2x_dcbnl_update_applist(bp, true);
#endif

	if (FUNC1(bp) &&
	    !FUNC0(bp) &&
	    (bp->flags & BC_SUPPORTS_RMMOD_CMD))
		FUNC9(bp, DRV_MSG_CODE_RMMOD, 0);

	/* Close the interface - either directly or implicitly */
	if (remove_netdev) {
		FUNC28(dev);
	} else {
		FUNC26();
		FUNC19(dev);
		FUNC27();
	}

	FUNC10(bp);

	/* Power on: we can't let PCI layer write to us while we are in D3 */
	if (FUNC1(bp)) {
		FUNC14(bp, PCI_D0);
		FUNC13(bp, OS_DRIVER_STATE_NOT_LOADED);

		/* Set endianity registers to reset values in case next driver
		 * boots in different endianty environment.
		 */
		FUNC12(bp);
	}

	/* Disable MSI/MSI-X */
	FUNC6(bp);

	/* Power off */
	if (FUNC1(bp))
		FUNC14(bp, PCI_D3hot);

	/* Make sure RESET task is not scheduled before continuing */
	FUNC17(&bp->sp_rtnl_task);

	/* send message via vfpf channel to release the resources of this vf */
	if (FUNC2(bp))
		FUNC16(bp);

	/* Assumes no further PCIe PM changes will occur */
	if (system_state == SYSTEM_POWER_OFF) {
		FUNC25(pdev, bp->wol);
		FUNC24(pdev, PCI_D3hot);
	}

	FUNC7(bp);
	if (remove_netdev) {
		if (bp->regview)
			FUNC21(bp->regview);

		/* For vfs, doorbells are part of the regview and were unmapped
		 * along with it. FW is only loaded by PF.
		 */
		if (FUNC1(bp)) {
			if (bp->doorbells)
				FUNC21(bp->doorbells);

			FUNC11(bp);
		} else {
			FUNC15(bp);
		}
		FUNC8(bp);

		FUNC20(dev);

		if (FUNC4(&pdev->enable_cnt) == 1)
			FUNC23(pdev);

		FUNC22(pdev);
	}
}
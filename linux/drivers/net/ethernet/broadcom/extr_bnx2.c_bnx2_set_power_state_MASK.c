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
typedef  int u32 ;
struct bnx2 {int /*<<< orphan*/  pdev; int /*<<< orphan*/  fw_last_msg; int /*<<< orphan*/  wol; } ;
typedef  int pci_power_t ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_BC_STATE_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  BNX2_CHIP_5709 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  BNX2_CHIP_ID_5706_A0 ; 
 int /*<<< orphan*/  BNX2_CHIP_ID_5706_A1 ; 
 int BNX2_CONDITION_PM_STATE_MASK ; 
 int BNX2_CONDITION_PM_STATE_UNPREP ; 
 int /*<<< orphan*/  BNX2_EMAC_MODE ; 
 int BNX2_EMAC_MODE_ACPI_RCVD ; 
 int BNX2_EMAC_MODE_MPKT ; 
 int BNX2_EMAC_MODE_MPKT_RCVD ; 
 int FUNC2 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNX2_RPM_CONFIG ; 
 int BNX2_RPM_CONFIG_ACPI_ENA ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
#define  PCI_D0 129 
#define  PCI_D3hot 128 
 int /*<<< orphan*/  FUNC4 (struct bnx2*) ; 
 int FUNC5 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct bnx2 *bp, pci_power_t state)
{
	switch (state) {
	case PCI_D0: {
		u32 val;

		FUNC7(bp->pdev, PCI_D0, false);
		FUNC8(bp->pdev, PCI_D0);

		val = FUNC2(bp, BNX2_EMAC_MODE);
		val |= BNX2_EMAC_MODE_MPKT_RCVD | BNX2_EMAC_MODE_ACPI_RCVD;
		val &= ~BNX2_EMAC_MODE_MPKT;
		FUNC3(bp, BNX2_EMAC_MODE, val);

		val = FUNC2(bp, BNX2_RPM_CONFIG);
		val &= ~BNX2_RPM_CONFIG_ACPI_ENA;
		FUNC3(bp, BNX2_RPM_CONFIG, val);
		break;
	}
	case PCI_D3hot: {
		FUNC4(bp);
		FUNC9(bp->pdev, bp->wol);
		if ((FUNC1(bp) == BNX2_CHIP_ID_5706_A0) ||
		    (FUNC1(bp) == BNX2_CHIP_ID_5706_A1)) {

			if (bp->wol)
				FUNC8(bp->pdev, PCI_D3hot);
			break;

		}
		if (!bp->fw_last_msg && FUNC0(bp) == BNX2_CHIP_5709) {
			u32 val;

			/* Tell firmware not to power down the PHY yet,
			 * otherwise the other port may not respond to
			 * MMIO reads.
			 */
			val = FUNC5(bp, BNX2_BC_STATE_CONDITION);
			val &= ~BNX2_CONDITION_PM_STATE_MASK;
			val |= BNX2_CONDITION_PM_STATE_UNPREP;
			FUNC6(bp, BNX2_BC_STATE_CONDITION, val);
		}
		FUNC8(bp->pdev, PCI_D3hot);

		/* No more memory access after this point until
		 * device is brought back to D0.
		 */
		break;
	}
	default:
		return -EINVAL;
	}
	return 0;
}
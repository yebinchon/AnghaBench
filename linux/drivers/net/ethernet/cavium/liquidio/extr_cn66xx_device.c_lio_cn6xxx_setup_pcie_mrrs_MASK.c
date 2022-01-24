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
typedef  int u32 ;
struct octeon_device {int /*<<< orphan*/  pcie_port; int /*<<< orphan*/  pci_dev; } ;
typedef  enum octeon_pcie_mrrs { ____Placeholder_octeon_pcie_mrrs } octeon_pcie_mrrs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CN6XXX_PCIE_DEVCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PCIE_MRRS_DEFAULT ; 
 int FUNC2 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct octeon_device *oct,
				enum octeon_pcie_mrrs mrrs)
{
	u32 val;
	u64 r64;

	/* Read config register for MRRS */
	FUNC6(oct->pci_dev, CN6XXX_PCIE_DEVCTL, &val);

	if (mrrs == PCIE_MRRS_DEFAULT) {
		mrrs = ((val & (0x7 << 12)) >> 12);
	} else {
		val &= ~(0x7 << 12); /* Turn off any MRRS bits */
		val |= (mrrs << 12); /* Set MRRS */
		FUNC7(oct->pci_dev, CN6XXX_PCIE_DEVCTL, val);
	}

	/* Set MRRS in SLI_S2M_PORT0_CTL to the same value. */
	r64 = FUNC4(oct, FUNC1(oct->pcie_port));
	r64 |= mrrs;
	FUNC5(oct, FUNC1(oct->pcie_port), r64);

	/* Set MRRS in DPI_SLI_PRT0_CFG to the same value. */
	r64 = FUNC2(oct, FUNC0(oct->pcie_port));
	r64 |= mrrs;
	FUNC3(oct, r64, FUNC0(oct->pcie_port));
}
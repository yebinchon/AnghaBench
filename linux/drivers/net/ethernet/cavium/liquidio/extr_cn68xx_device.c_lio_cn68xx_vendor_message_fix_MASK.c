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
struct octeon_device {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_PCIE_FLTMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct octeon_device *oct)
{
	u32 val = 0;

	/* Set M_VEND1_DRP and M_VEND0_DRP bits */
	FUNC0(oct->pci_dev, CN6XXX_PCIE_FLTMSK, &val);
	val |= 0x3;
	FUNC1(oct->pci_dev, CN6XXX_PCIE_FLTMSK, val);
}
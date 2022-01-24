#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {unsigned long base_addr; } ;
struct TYPE_5__ {struct device* bus_dev; } ;
typedef  TYPE_1__ DFX_board_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  PFI_K_REG_MODE_CTRL ; 
 int /*<<< orphan*/  PI_CONFIG_STAT_0_M_INT_ENB ; 
 scalar_t__ PI_ESIC_K_FUNCTION_CNTRL ; 
 scalar_t__ PI_ESIC_K_IO_CONFIG_STAT_0 ; 
 scalar_t__ PI_ESIC_K_SLOT_CNTRL ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC7 (struct device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	DFX_board_t *bp = FUNC5(dev);
	struct device *bdev = bp->bus_dev;
	int dfx_bus_pci = FUNC2(bdev);
	int dfx_bus_eisa = FUNC1(bdev);
	u8 val;

	FUNC0("In dfx_bus_uninit...\n");

	/* Uninitialize adapter based on bus type */

	if (dfx_bus_eisa) {
		unsigned long base_addr = FUNC7(bdev)->base_addr;

		/* Disable interrupts at EISA bus interface chip (ESIC) */
		val = FUNC4(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
		val &= ~PI_CONFIG_STAT_0_M_INT_ENB;
		FUNC6(val, base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);

		/* Disable the board.  */
		FUNC6(0, base_addr + PI_ESIC_K_SLOT_CNTRL);

		/* Disable memory and port decoders.  */
		FUNC6(0, base_addr + PI_ESIC_K_FUNCTION_CNTRL);
	}
	if (dfx_bus_pci) {
		/* Disable interrupts at PCI bus interface chip (PFI) */
		FUNC3(bp, PFI_K_REG_MODE_CTRL, 0);
	}
}
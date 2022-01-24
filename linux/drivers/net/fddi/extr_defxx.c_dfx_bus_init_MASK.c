#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int irq; } ;
struct net_device {int irq; } ;
struct device {int dummy; } ;
struct TYPE_8__ {unsigned long base_addr; } ;
struct TYPE_7__ {int interrupt; } ;
struct TYPE_6__ {struct net_device* dev; struct device* bus_dev; } ;
typedef  TYPE_1__ DFX_board_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 scalar_t__ DFX_MMIO ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int PFI_K_LAT_TIMER_DEF ; 
 int PFI_K_LAT_TIMER_MIN ; 
 int /*<<< orphan*/  PFI_K_REG_MODE_CTRL ; 
 int PFI_MODE_M_DMA_ENB ; 
 int PFI_MODE_M_PDQ_INT_ENB ; 
 int PI_BURST_HOLDOFF_M_MEM_MAP ; 
#define  PI_CONFIG_STAT_0_IRQ_K_10 131 
#define  PI_CONFIG_STAT_0_IRQ_K_11 130 
#define  PI_CONFIG_STAT_0_IRQ_K_15 129 
#define  PI_CONFIG_STAT_0_IRQ_K_9 128 
 int PI_CONFIG_STAT_0_M_INT_ENB ; 
 int PI_CONFIG_STAT_0_M_IRQ ; 
 int PI_CONFIG_STAT_0_V_IRQ ; 
 unsigned long PI_DEFEA_K_BURST_HOLDOFF ; 
 int PI_DEFEA_K_CSR_IO ; 
 int PI_ESIC_K_BURST_HOLDOFF_LEN ; 
 int PI_ESIC_K_CSR_IO_LEN ; 
 unsigned long PI_ESIC_K_FUNCTION_CNTRL ; 
 unsigned long PI_ESIC_K_IO_ADD_CMP_0_0 ; 
 unsigned long PI_ESIC_K_IO_ADD_CMP_0_1 ; 
 unsigned long PI_ESIC_K_IO_ADD_CMP_1_0 ; 
 unsigned long PI_ESIC_K_IO_ADD_CMP_1_1 ; 
 unsigned long PI_ESIC_K_IO_ADD_MASK_0_0 ; 
 unsigned long PI_ESIC_K_IO_ADD_MASK_0_1 ; 
 unsigned long PI_ESIC_K_IO_ADD_MASK_1_0 ; 
 unsigned long PI_ESIC_K_IO_ADD_MASK_1_1 ; 
 unsigned long PI_ESIC_K_IO_CONFIG_STAT_0 ; 
 unsigned long PI_ESIC_K_SLOT_CNTRL ; 
 int PI_FUNCTION_CNTRL_M_IOCS0 ; 
 int PI_FUNCTION_CNTRL_M_IOCS1 ; 
 int PI_FUNCTION_CNTRL_M_MEMCS1 ; 
 int PI_IO_CMP_M_SLOT ; 
 int PI_SLOT_CNTRL_M_ENB ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (unsigned long) ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC10 (struct device*) ; 
 struct pci_dev* FUNC11 (struct device*) ; 
 TYPE_2__* FUNC12 (struct device*) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev)
{
	DFX_board_t *bp = FUNC6(dev);
	struct device *bdev = bp->bus_dev;
	int dfx_bus_pci = FUNC3(bdev);
	int dfx_bus_eisa = FUNC1(bdev);
	int dfx_bus_tc = FUNC2(bdev);
	int dfx_use_mmio = DFX_MMIO || dfx_bus_tc;
	u8 val;

	FUNC0("In dfx_bus_init...\n");

	/* Initialize a pointer back to the net_device struct */
	bp->dev = dev;

	/* Initialize adapter based on bus type */

	if (dfx_bus_tc)
		dev->irq = FUNC12(bdev)->interrupt;
	if (dfx_bus_eisa) {
		unsigned long base_addr = FUNC10(bdev)->base_addr;

		/* Disable the board before fiddling with the decoders.  */
		FUNC7(0, base_addr + PI_ESIC_K_SLOT_CNTRL);

		/* Get the interrupt level from the ESIC chip.  */
		val = FUNC5(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
		val &= PI_CONFIG_STAT_0_M_IRQ;
		val >>= PI_CONFIG_STAT_0_V_IRQ;

		switch (val) {
		case PI_CONFIG_STAT_0_IRQ_K_9:
			dev->irq = 9;
			break;

		case PI_CONFIG_STAT_0_IRQ_K_10:
			dev->irq = 10;
			break;

		case PI_CONFIG_STAT_0_IRQ_K_11:
			dev->irq = 11;
			break;

		case PI_CONFIG_STAT_0_IRQ_K_15:
			dev->irq = 15;
			break;
		}

		/*
		 * Enable memory decoding (MEMCS1) and/or port decoding
		 * (IOCS1/IOCS0) as appropriate in Function Control
		 * Register.  MEMCS1 or IOCS0 is used for PDQ registers,
		 * taking 16 32-bit words, while IOCS1 is used for the
		 * Burst Holdoff register, taking a single 32-bit word
		 * only.  We use the slot-specific I/O range as per the
		 * ESIC spec, that is set bits 15:12 in the mask registers
		 * to mask them out.
		 */

		/* Set the decode range of the board.  */
		val = 0;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_CMP_0_1);
		val = PI_DEFEA_K_CSR_IO;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_CMP_0_0);

		val = PI_IO_CMP_M_SLOT;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_MASK_0_1);
		val = (PI_ESIC_K_CSR_IO_LEN - 1) & ~3;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_MASK_0_0);

		val = 0;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_CMP_1_1);
		val = PI_DEFEA_K_BURST_HOLDOFF;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_CMP_1_0);

		val = PI_IO_CMP_M_SLOT;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_MASK_1_1);
		val = (PI_ESIC_K_BURST_HOLDOFF_LEN - 1) & ~3;
		FUNC7(val, base_addr + PI_ESIC_K_IO_ADD_MASK_1_0);

		/* Enable the decoders.  */
		val = PI_FUNCTION_CNTRL_M_IOCS1;
		if (dfx_use_mmio)
			val |= PI_FUNCTION_CNTRL_M_MEMCS1;
		else
			val |= PI_FUNCTION_CNTRL_M_IOCS0;
		FUNC7(val, base_addr + PI_ESIC_K_FUNCTION_CNTRL);

		/*
		 * Enable access to the rest of the module
		 * (including PDQ and packet memory).
		 */
		val = PI_SLOT_CNTRL_M_ENB;
		FUNC7(val, base_addr + PI_ESIC_K_SLOT_CNTRL);

		/*
		 * Map PDQ registers into memory or port space.  This is
		 * done with a bit in the Burst Holdoff register.
		 */
		val = FUNC5(base_addr + PI_DEFEA_K_BURST_HOLDOFF);
		if (dfx_use_mmio)
			val |= PI_BURST_HOLDOFF_M_MEM_MAP;
		else
			val &= ~PI_BURST_HOLDOFF_M_MEM_MAP;
		FUNC7(val, base_addr + PI_DEFEA_K_BURST_HOLDOFF);

		/* Enable interrupts at EISA bus interface chip (ESIC) */
		val = FUNC5(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
		val |= PI_CONFIG_STAT_0_M_INT_ENB;
		FUNC7(val, base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
	}
	if (dfx_bus_pci) {
		struct pci_dev *pdev = FUNC11(bdev);

		/* Get the interrupt level from the PCI Configuration Table */

		dev->irq = pdev->irq;

		/* Check Latency Timer and set if less than minimal */

		FUNC8(pdev, PCI_LATENCY_TIMER, &val);
		if (val < PFI_K_LAT_TIMER_MIN) {
			val = PFI_K_LAT_TIMER_DEF;
			FUNC9(pdev, PCI_LATENCY_TIMER, val);
		}

		/* Enable interrupts at PCI bus interface chip (PFI) */
		val = PFI_MODE_M_PDQ_INT_ENB | PFI_MODE_M_DMA_ENB;
		FUNC4(bp, PFI_K_REG_MODE_CTRL, val);
	}
}
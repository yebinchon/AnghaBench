#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {unsigned long base_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; struct device* bus_dev; } ;
typedef  TYPE_1__ DFX_board_t ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PFI_K_REG_MODE_CTRL ; 
 int /*<<< orphan*/  PFI_K_REG_STATUS ; 
 int PFI_MODE_M_DMA_ENB ; 
 int PFI_MODE_M_PDQ_INT_ENB ; 
 int PFI_STATUS_M_PDQ_INT ; 
 int PI_CONFIG_STAT_0_M_INT_ENB ; 
 int PI_CONFIG_STAT_0_M_PEND ; 
 scalar_t__ PI_ESIC_K_IO_CONFIG_STAT_0 ; 
 int /*<<< orphan*/  PI_PDQ_K_REG_PORT_STATUS ; 
 int PI_PSTATUS_M_CMD_REQ_PENDING ; 
 int PI_PSTATUS_M_CMD_RSP_PENDING ; 
 int PI_PSTATUS_M_RCV_DATA_PENDING ; 
 int PI_PSTATUS_M_SMT_HOST_PENDING ; 
 int PI_PSTATUS_M_TYPE_0_PENDING ; 
 int PI_PSTATUS_M_UNSOL_PENDING ; 
 int PI_PSTATUS_M_XMT_DATA_PENDING ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__) ; 
 TYPE_1__* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (struct device*) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	DFX_board_t *bp = FUNC7(dev);
	struct device *bdev = bp->bus_dev;
	int dfx_bus_pci = FUNC2(bdev);
	int dfx_bus_eisa = FUNC0(bdev);
	int dfx_bus_tc = FUNC1(bdev);

	/* Service adapter interrupts */

	if (dfx_bus_pci) {
		u32 status;

		FUNC4(bp, PFI_K_REG_STATUS, &status);
		if (!(status & PFI_STATUS_M_PDQ_INT))
			return IRQ_NONE;

		FUNC9(&bp->lock);

		/* Disable PDQ-PFI interrupts at PFI */
		FUNC5(bp, PFI_K_REG_MODE_CTRL,
				    PFI_MODE_M_DMA_ENB);

		/* Call interrupt service routine for this adapter */
		FUNC3(dev);

		/* Clear PDQ interrupt status bit and reenable interrupts */
		FUNC5(bp, PFI_K_REG_STATUS,
				    PFI_STATUS_M_PDQ_INT);
		FUNC5(bp, PFI_K_REG_MODE_CTRL,
				    (PFI_MODE_M_PDQ_INT_ENB |
				     PFI_MODE_M_DMA_ENB));

		FUNC10(&bp->lock);
	}
	if (dfx_bus_eisa) {
		unsigned long base_addr = FUNC11(bdev)->base_addr;
		u8 status;

		status = FUNC6(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
		if (!(status & PI_CONFIG_STAT_0_M_PEND))
			return IRQ_NONE;

		FUNC9(&bp->lock);

		/* Disable interrupts at the ESIC */
		status &= ~PI_CONFIG_STAT_0_M_INT_ENB;
		FUNC8(status, base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);

		/* Call interrupt service routine for this adapter */
		FUNC3(dev);

		/* Reenable interrupts at the ESIC */
		status = FUNC6(base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);
		status |= PI_CONFIG_STAT_0_M_INT_ENB;
		FUNC8(status, base_addr + PI_ESIC_K_IO_CONFIG_STAT_0);

		FUNC10(&bp->lock);
	}
	if (dfx_bus_tc) {
		u32 status;

		FUNC4(bp, PI_PDQ_K_REG_PORT_STATUS, &status);
		if (!(status & (PI_PSTATUS_M_RCV_DATA_PENDING |
				PI_PSTATUS_M_XMT_DATA_PENDING |
				PI_PSTATUS_M_SMT_HOST_PENDING |
				PI_PSTATUS_M_UNSOL_PENDING |
				PI_PSTATUS_M_CMD_RSP_PENDING |
				PI_PSTATUS_M_CMD_REQ_PENDING |
				PI_PSTATUS_M_TYPE_0_PENDING)))
			return IRQ_NONE;

		FUNC9(&bp->lock);

		/* Call interrupt service routine for this adapter */
		FUNC3(dev);

		FUNC10(&bp->lock);
	}

	return IRQ_HANDLED;
}
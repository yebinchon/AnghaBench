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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct cas {int cas_flags; int /*<<< orphan*/  pdev; scalar_t__ regs; } ;

/* Variables and functions */
 int CAS_FLAG_REG_PLUS ; 
 int PCI_ERR_BADACK ; 
 int PCI_ERR_BIM_DMA_READ ; 
 int PCI_ERR_BIM_DMA_WRITE ; 
 int PCI_ERR_DTRTO ; 
 int PCI_ERR_OTHER ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_DETECTED_PARITY ; 
 int PCI_STATUS_PARITY ; 
 int PCI_STATUS_REC_MASTER_ABORT ; 
 int PCI_STATUS_REC_TARGET_ABORT ; 
 int PCI_STATUS_SIG_SYSTEM_ERROR ; 
 int PCI_STATUS_SIG_TARGET_ABORT ; 
 scalar_t__ REG_BIM_DIAG ; 
 scalar_t__ REG_PCI_ERR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct cas *cp,
			     u32 status)
{
	u32 stat = FUNC4(cp->regs + REG_PCI_ERR_STATUS);

	if (!stat)
		return 0;

	FUNC0(dev, "PCI error [%04x:%04x]",
		   stat, FUNC4(cp->regs + REG_BIM_DIAG));

	/* cassini+ has this reserved */
	if ((stat & PCI_ERR_BADACK) &&
	    ((cp->cas_flags & CAS_FLAG_REG_PLUS) == 0))
		FUNC3(" <No ACK64# during ABS64 cycle>");

	if (stat & PCI_ERR_DTRTO)
		FUNC3(" <Delayed transaction timeout>");
	if (stat & PCI_ERR_OTHER)
		FUNC3(" <other>");
	if (stat & PCI_ERR_BIM_DMA_WRITE)
		FUNC3(" <BIM DMA 0 write req>");
	if (stat & PCI_ERR_BIM_DMA_READ)
		FUNC3(" <BIM DMA 0 read req>");
	FUNC3("\n");

	if (stat & PCI_ERR_OTHER) {
		u16 cfg;

		/* Interrogate PCI config space for the
		 * true cause.
		 */
		FUNC1(cp->pdev, PCI_STATUS, &cfg);
		FUNC0(dev, "Read PCI cfg space status [%04x]\n", cfg);
		if (cfg & PCI_STATUS_PARITY)
			FUNC0(dev, "PCI parity error detected\n");
		if (cfg & PCI_STATUS_SIG_TARGET_ABORT)
			FUNC0(dev, "PCI target abort\n");
		if (cfg & PCI_STATUS_REC_TARGET_ABORT)
			FUNC0(dev, "PCI master acks target abort\n");
		if (cfg & PCI_STATUS_REC_MASTER_ABORT)
			FUNC0(dev, "PCI master abort\n");
		if (cfg & PCI_STATUS_SIG_SYSTEM_ERROR)
			FUNC0(dev, "PCI system error SERR#\n");
		if (cfg & PCI_STATUS_DETECTED_PARITY)
			FUNC0(dev, "PCI parity error\n");

		/* Write the error bits back to clear them. */
		cfg &= (PCI_STATUS_PARITY |
			PCI_STATUS_SIG_TARGET_ABORT |
			PCI_STATUS_REC_TARGET_ABORT |
			PCI_STATUS_REC_MASTER_ABORT |
			PCI_STATUS_SIG_SYSTEM_ERROR |
			PCI_STATUS_DETECTED_PARITY);
		FUNC2(cp->pdev, PCI_STATUS, cfg);
	}

	/* For all PCI errors, we should reset the chip. */
	return 1;
}
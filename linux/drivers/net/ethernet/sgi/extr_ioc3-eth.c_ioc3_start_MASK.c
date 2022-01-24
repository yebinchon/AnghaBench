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
struct ioc3_private {int rx_ci; int rx_pi; int tx_pi; int tx_ci; int emcr; scalar_t__ txqlen; int /*<<< orphan*/  txr_dma; int /*<<< orphan*/  rxr_dma; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int /*<<< orphan*/  eier; int /*<<< orphan*/  emcr; int /*<<< orphan*/  etcir; int /*<<< orphan*/  etpir; int /*<<< orphan*/  etbr_l; int /*<<< orphan*/  etbr_h; int /*<<< orphan*/  erpir; int /*<<< orphan*/  ercir; int /*<<< orphan*/  erbr_l; int /*<<< orphan*/  erbr_h; } ;

/* Variables and functions */
 int EISR_RXBUFOFLO ; 
 int EISR_RXMEMERR ; 
 int EISR_RXOFLO ; 
 int EISR_RXPARERR ; 
 int EISR_RXTIMERINT ; 
 int EISR_TXBUFUFLO ; 
 int EISR_TXEXPLICIT ; 
 int EISR_TXMEMERR ; 
 int EMCR_PADEN ; 
 int EMCR_RXDMAEN ; 
 int EMCR_RXEN ; 
 int EMCR_RXOFF_SHIFT ; 
 int EMCR_TXDMAEN ; 
 int EMCR_TXEN ; 
 int ERPIR_ARM ; 
 int /*<<< orphan*/  PCI64_ATTR_PREC ; 
 int RX_OFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ioc3_private *ip)
{
	struct ioc3_ethregs *regs = ip->regs;
	unsigned long ring;

	/* Now the rx ring base, consume & produce registers.  */
	ring = FUNC0(ip->rxr_dma, PCI64_ATTR_PREC);
	FUNC2(ring >> 32, &regs->erbr_h);
	FUNC2(ring & 0xffffffff, &regs->erbr_l);
	FUNC2(ip->rx_ci << 3, &regs->ercir);
	FUNC2((ip->rx_pi << 3) | ERPIR_ARM, &regs->erpir);

	ring = FUNC0(ip->txr_dma, PCI64_ATTR_PREC);

	ip->txqlen = 0;					/* nothing queued  */

	/* Now the tx ring base, consume & produce registers.  */
	FUNC2(ring >> 32, &regs->etbr_h);
	FUNC2(ring & 0xffffffff, &regs->etbr_l);
	FUNC2(ip->tx_pi << 7, &regs->etpir);
	FUNC2(ip->tx_ci << 7, &regs->etcir);
	FUNC1(&regs->etcir);				/* Flush */

	ip->emcr |= ((RX_OFFSET / 2) << EMCR_RXOFF_SHIFT) | EMCR_TXDMAEN |
		    EMCR_TXEN | EMCR_RXDMAEN | EMCR_RXEN | EMCR_PADEN;
	FUNC2(ip->emcr, &regs->emcr);
	FUNC2(EISR_RXTIMERINT | EISR_RXOFLO | EISR_RXBUFOFLO |
	       EISR_RXMEMERR | EISR_RXPARERR | EISR_TXBUFUFLO |
	       EISR_TXEXPLICIT | EISR_TXMEMERR, &regs->eier);
	FUNC1(&regs->eier);
}
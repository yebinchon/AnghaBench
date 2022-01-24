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
struct net_local {scalar_t__ chip_type; int curr_rx_cfg; scalar_t__ rx_mode; } ;
struct net_device {int* dev_addr; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ CS8900 ; 
 int DEF_RX_ACCEPT ; 
 int EAGAIN ; 
 int ENABLE_IRQ ; 
 int ETH_ALEN ; 
 scalar_t__ PP_BufCFG ; 
 scalar_t__ PP_BusCTL ; 
 scalar_t__ PP_CS8900_ISAINT ; 
 scalar_t__ PP_CS8920_ISAINT ; 
 scalar_t__ PP_IA ; 
 scalar_t__ PP_LineCTL ; 
 scalar_t__ PP_RxCFG ; 
 scalar_t__ PP_RxCTL ; 
 scalar_t__ PP_TxCFG ; 
 int READY_FOR_TX_ENBL ; 
 int RX_CRC_ERROR_ENBL ; 
 int RX_MISS_COUNT_OVRFLOW_ENBL ; 
 int RX_OK_ENBL ; 
 int SERIAL_RX_ON ; 
 int SERIAL_TX_ON ; 
 int TX_16_COL_ENBL ; 
 int TX_ANY_COL_ENBL ; 
 int TX_COL_COUNT_OVRFLOW_ENBL ; 
 int TX_JBR_ENBL ; 
 int TX_LATE_COL_ENBL ; 
 int TX_LOST_CRS_ENBL ; 
 int TX_OK_ENBL ; 
 int TX_SQE_ERROR_ENBL ; 
 int TX_UNDERRUN_ENBL ; 
 int /*<<< orphan*/  net_interrupt ; 
 struct net_local* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	struct net_local *lp = FUNC0(dev);
	int i;

	/* Disable the interrupt for now */
	FUNC4(dev, PP_BusCTL, FUNC2(dev, PP_BusCTL) & ~ENABLE_IRQ);

	/* Grab the interrupt */
	if (FUNC3(dev->irq, net_interrupt, 0, "cs89x0", dev))
		return -EAGAIN;

	/* Set up the IRQ - Apparently magic */
	if (lp->chip_type == CS8900)
		FUNC4(dev, PP_CS8900_ISAINT, 0);
	else
		FUNC4(dev, PP_CS8920_ISAINT, 0);

	/* set the Ethernet address */
	for (i=0; i < ETH_ALEN/2; i++)
		FUNC4(dev, PP_IA+i*2, dev->dev_addr[i*2] | (dev->dev_addr[i*2+1] << 8));

	/* Turn on both receive and transmit operations */
	FUNC4(dev, PP_LineCTL, FUNC2(dev, PP_LineCTL) | SERIAL_RX_ON | SERIAL_TX_ON);

	/* Receive only error free packets addressed to this card */
	lp->rx_mode = 0;
	FUNC4(dev, PP_RxCTL, DEF_RX_ACCEPT);

	lp->curr_rx_cfg = RX_OK_ENBL | RX_CRC_ERROR_ENBL;

	FUNC4(dev, PP_RxCFG, lp->curr_rx_cfg);

	FUNC4(dev, PP_TxCFG, TX_LOST_CRS_ENBL | TX_SQE_ERROR_ENBL | TX_OK_ENBL |
	       TX_LATE_COL_ENBL | TX_JBR_ENBL | TX_ANY_COL_ENBL | TX_16_COL_ENBL);

	FUNC4(dev, PP_BufCFG, READY_FOR_TX_ENBL | RX_MISS_COUNT_OVRFLOW_ENBL |
		 TX_COL_COUNT_OVRFLOW_ENBL | TX_UNDERRUN_ENBL);

	/* now that we've got our act together, enable everything */
	FUNC4(dev, PP_BusCTL, FUNC2(dev, PP_BusCTL) | ENABLE_IRQ);
	FUNC1(dev);
	return 0;
}
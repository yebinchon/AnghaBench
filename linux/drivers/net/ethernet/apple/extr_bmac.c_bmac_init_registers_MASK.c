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
struct net_device {scalar_t__ dev_addr; } ;
struct bmac_data {unsigned short* hash_table_mask; int /*<<< orphan*/  is_bmac_plus; } ;

/* Variables and functions */
 int /*<<< orphan*/  AECNT ; 
 int /*<<< orphan*/  BHASH0 ; 
 int /*<<< orphan*/  BHASH1 ; 
 int /*<<< orphan*/  BHASH2 ; 
 int /*<<< orphan*/  BHASH3 ; 
 unsigned short volatile COLActiveLow ; 
 unsigned short volatile ClkBit ; 
 int /*<<< orphan*/  EXCNT ; 
 unsigned short EnableNormal ; 
 int /*<<< orphan*/  FECNT ; 
 int /*<<< orphan*/  FRCNT ; 
 int /*<<< orphan*/  INTDISABLE ; 
 int /*<<< orphan*/  LECNT ; 
 int /*<<< orphan*/  LTCNT ; 
 int /*<<< orphan*/  MADD0 ; 
 int /*<<< orphan*/  MADD1 ; 
 int /*<<< orphan*/  MADD2 ; 
 int /*<<< orphan*/  NCCNT ; 
 int /*<<< orphan*/  NTCNT ; 
 int /*<<< orphan*/  PAREG ; 
 int /*<<< orphan*/  RSEED ; 
 int /*<<< orphan*/  RXCFG ; 
 int /*<<< orphan*/  RXCV ; 
 int /*<<< orphan*/  RXFIFOCSR ; 
 int /*<<< orphan*/  RXRST ; 
 unsigned short RxCRCNoStrip ; 
 unsigned short RxFIFOEnable ; 
 unsigned short RxHashFilterEnable ; 
 unsigned short RxRejectOwnPackets ; 
 unsigned short RxResetValue ; 
 int /*<<< orphan*/  STATUS ; 
 unsigned short volatile SerialMode ; 
 int /*<<< orphan*/  TXFIFOCSR ; 
 int /*<<< orphan*/  TXRST ; 
 int /*<<< orphan*/  TXTH ; 
 unsigned short TxFIFOEnable ; 
 unsigned short volatile TxOutputEnable ; 
 unsigned short volatile TxResetBit ; 
 int /*<<< orphan*/  XCVRIF ; 
 int /*<<< orphan*/  XIFC ; 
 unsigned short FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,unsigned short volatile) ; 
 struct bmac_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct net_device *dev)
{
	struct bmac_data *bp = FUNC2(dev);
	volatile unsigned short regValue;
	unsigned short *pWord16;
	int i;

	/* XXDEBUG(("bmac: enter init_registers\n")); */

	FUNC1(dev, RXRST, RxResetValue);
	FUNC1(dev, TXRST, TxResetBit);

	i = 100;
	do {
		--i;
		FUNC3(10000);
		regValue = FUNC0(dev, TXRST); /* wait for reset to clear..acknowledge */
	} while ((regValue & TxResetBit) && i > 0);

	if (!bp->is_bmac_plus) {
		regValue = FUNC0(dev, XCVRIF);
		regValue |= ClkBit | SerialMode | COLActiveLow;
		FUNC1(dev, XCVRIF, regValue);
		FUNC3(10000);
	}

	FUNC1(dev, RSEED, (unsigned short)0x1968);

	regValue = FUNC0(dev, XIFC);
	regValue |= TxOutputEnable;
	FUNC1(dev, XIFC, regValue);

	FUNC0(dev, PAREG);

	/* set collision counters to 0 */
	FUNC1(dev, NCCNT, 0);
	FUNC1(dev, NTCNT, 0);
	FUNC1(dev, EXCNT, 0);
	FUNC1(dev, LTCNT, 0);

	/* set rx counters to 0 */
	FUNC1(dev, FRCNT, 0);
	FUNC1(dev, LECNT, 0);
	FUNC1(dev, AECNT, 0);
	FUNC1(dev, FECNT, 0);
	FUNC1(dev, RXCV, 0);

	/* set tx fifo information */
	FUNC1(dev, TXTH, 4);	/* 4 octets before tx starts */

	FUNC1(dev, TXFIFOCSR, 0);	/* first disable txFIFO */
	FUNC1(dev, TXFIFOCSR, TxFIFOEnable );

	/* set rx fifo information */
	FUNC1(dev, RXFIFOCSR, 0);	/* first disable rxFIFO */
	FUNC1(dev, RXFIFOCSR, RxFIFOEnable );

	//bmwrite(dev, TXCFG, TxMACEnable);	       	/* TxNeverGiveUp maybe later */
	FUNC0(dev, STATUS);		/* read it just to clear it */

	/* zero out the chip Hash Filter registers */
	for (i=0; i<4; i++) bp->hash_table_mask[i] = 0;
	FUNC1(dev, BHASH3, bp->hash_table_mask[0]); 	/* bits 15 - 0 */
	FUNC1(dev, BHASH2, bp->hash_table_mask[1]); 	/* bits 31 - 16 */
	FUNC1(dev, BHASH1, bp->hash_table_mask[2]); 	/* bits 47 - 32 */
	FUNC1(dev, BHASH0, bp->hash_table_mask[3]); 	/* bits 63 - 48 */

	pWord16 = (unsigned short *)dev->dev_addr;
	FUNC1(dev, MADD0, *pWord16++);
	FUNC1(dev, MADD1, *pWord16++);
	FUNC1(dev, MADD2, *pWord16);

	FUNC1(dev, RXCFG, RxCRCNoStrip | RxHashFilterEnable | RxRejectOwnPackets);

	FUNC1(dev, INTDISABLE, EnableNormal);
}
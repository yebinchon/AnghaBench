#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int dummy; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct TYPE_11__ {scalar_t__ magic; } ;
struct TYPE_9__ {int tx_bit; int txshreg; } ;
struct TYPE_10__ {int ptt; TYPE_1__ ser12; } ;
struct baycom_state {unsigned char opt_dcd; int baud_uartdiv; TYPE_3__ hdrv; TYPE_2__ modem; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HDLCDRV_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct baycom_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,TYPE_3__*) ; 
 unsigned char FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 struct baycom_state* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,struct baycom_state*,struct timespec64*,unsigned char) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int) ; 

__attribute__((used)) static irqreturn_t FUNC21(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct baycom_state *bc = FUNC17(dev);
	struct timespec64 ts;
	unsigned char iir, msr;
	unsigned int txcount = 0;

	if (!bc || bc->hdrv.magic != HDLCDRV_MAGIC)
		return IRQ_NONE;
	/* fast way out for shared irq */
	if ((iir = FUNC13(FUNC0(dev->base_addr))) & 1) 	
		return IRQ_NONE;
	/* get current time */
	FUNC14(&ts);
	msr = FUNC13(FUNC3(dev->base_addr));
	/* delta DCD */
	if ((msr & 8) && bc->opt_dcd)
		FUNC11(&bc->hdrv, !((msr ^ bc->opt_dcd) & 0x80));
	do {
		switch (iir & 6) {
		case 6:
			FUNC13(FUNC1(dev->base_addr));
			break;
			
		case 4:
			FUNC13(FUNC4(dev->base_addr));
			break;
			
		case 2:
			/*
			 * make sure the next interrupt is generated;
			 * 0 must be used to power the modem; the modem draws its
			 * power from the TxD line
			 */
			FUNC18(0x00, FUNC5(dev->base_addr));
			FUNC6(bc);
			txcount++;
			/*
			 * first output the last bit (!) then call HDLC transmitter,
			 * since this may take quite long
			 */
			if (bc->modem.ptt)
				FUNC18(0x0e | (!!bc->modem.ser12.tx_bit), FUNC2(dev->base_addr));
			else
				FUNC18(0x0d, FUNC2(dev->base_addr));       /* transmitter off */
			break;
			
		default:
			msr = FUNC13(FUNC3(dev->base_addr));
			/* delta DCD */
			if ((msr & 8) && bc->opt_dcd) 
				FUNC11(&bc->hdrv, !((msr ^ bc->opt_dcd) & 0x80));
			break;
		}
		iir = FUNC13(FUNC0(dev->base_addr));
	} while (!(iir & 1));
	FUNC19(dev, bc, &ts, msr & 0x10); /* CTS */
	if (bc->modem.ptt && txcount) {
		if (bc->modem.ser12.txshreg <= 1) {
			bc->modem.ser12.txshreg = 0x10000 | FUNC8(&bc->hdrv);
			if (!FUNC9(&bc->hdrv)) {
				FUNC20(dev, 115200/100/8);
				bc->modem.ptt = 0;
				goto end_transmit;
			}
		}
		bc->modem.ser12.tx_bit = !(bc->modem.ser12.tx_bit ^ (bc->modem.ser12.txshreg & 1));
		bc->modem.ser12.txshreg >>= 1;
	}
 end_transmit:
	FUNC16();
	if (!bc->modem.ptt && txcount) {
		FUNC7(dev, &bc->hdrv);
		if (FUNC9(&bc->hdrv)) {
			FUNC20(dev, bc->baud_uartdiv);
			bc->modem.ser12.txshreg = 1;
			bc->modem.ptt = 1;
		}
	}
	FUNC12(dev, &bc->hdrv);
	FUNC10(dev, &bc->hdrv);
	FUNC15();
	return IRQ_HANDLED;
}
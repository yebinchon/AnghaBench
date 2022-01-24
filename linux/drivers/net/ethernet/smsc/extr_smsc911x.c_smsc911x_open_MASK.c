#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ irq_type; scalar_t__ irq_polarity; } ;
struct smsc911x_data {int last_duplex; int last_carrier; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  napi; scalar_t__ ioaddr; scalar_t__ software_irq_signal; TYPE_1__ config; } ;
struct net_device {int /*<<< orphan*/ * phydev; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFC_CFG ; 
 int /*<<< orphan*/  E2P_CMD ; 
 unsigned int E2P_CMD_EPC_BUSY_ ; 
 int ENODEV ; 
 unsigned int ETH_P_8021Q ; 
 int /*<<< orphan*/  FIFO_INT ; 
 unsigned int FIFO_INT_RX_STS_LEVEL_ ; 
 unsigned int FIFO_INT_TX_AVAIL_LEVEL_ ; 
 int /*<<< orphan*/  GPIO_CFG ; 
 int /*<<< orphan*/  HW_CFG ; 
 unsigned int HW_CFG_SF_ ; 
 int HW_CFG_TX_FIF_SZ_ ; 
 int /*<<< orphan*/  INT_CFG ; 
 int INT_CFG_IRQ_EN_ ; 
 unsigned int INT_CFG_IRQ_POL_ ; 
 unsigned int INT_CFG_IRQ_TYPE_ ; 
 int /*<<< orphan*/  INT_EN ; 
 unsigned int INT_EN_RSFL_EN_ ; 
 unsigned int INT_EN_RXSTOP_INT_EN_ ; 
 unsigned int INT_EN_SW_INT_EN_ ; 
 unsigned int INT_EN_TDFA_EN_ ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  MAC_CR ; 
 unsigned int MAC_CR_HBDIS_ ; 
 unsigned int MAC_CR_RXEN_ ; 
 unsigned int MAC_CR_TXEN_ ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  RX_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TX_CFG ; 
 unsigned int TX_CFG_TX_ON_ ; 
 int /*<<< orphan*/  VLAN1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  ifup ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 struct smsc911x_data* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  smsc911x_irqhandler ; 
 unsigned int FUNC15 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC17 (struct net_device*) ; 
 unsigned int FUNC18 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC7(dev);
	unsigned int timeout;
	unsigned int temp;
	unsigned int intcfg;
	int retval;
	int irq_flags;

	/* find and start the given phy */
	if (!dev->phydev) {
		retval = FUNC17(dev);
		if (retval < 0) {
			FUNC1(pdata, probe, "Error starting phy");
			goto out;
		}
	}

	/* Reset the LAN911x */
	retval = FUNC21(pdata);
	if (retval) {
		FUNC1(pdata, hw, "soft reset failed");
		goto mii_free_out;
	}

	FUNC19(pdata, HW_CFG, 0x00050000);
	FUNC19(pdata, AFC_CFG, 0x006E3740);

	/* Increase the legal frame size of VLAN tagged frames to 1522 bytes */
	FUNC22(&pdata->mac_lock);
	FUNC16(pdata, VLAN1, ETH_P_8021Q);
	FUNC23(&pdata->mac_lock);

	/* Make sure EEPROM has finished loading before setting GPIO_CFG */
	timeout = 50;
	while ((FUNC18(pdata, E2P_CMD) & E2P_CMD_EPC_BUSY_) &&
	       --timeout) {
		FUNC24(10);
	}

	if (FUNC25(timeout == 0))
		FUNC1(pdata, ifup,
			  "Timed out waiting for EEPROM busy bit to clear");

	FUNC19(pdata, GPIO_CFG, 0x70070000);

	/* The soft reset above cleared the device's MAC address,
	 * restore it from local copy (set in probe) */
	FUNC22(&pdata->mac_lock);
	FUNC20(pdata, dev->dev_addr);
	FUNC23(&pdata->mac_lock);

	/* Initialise irqs, but leave all sources disabled */
	FUNC14(dev);

	/* Set interrupt deassertion to 100uS */
	intcfg = ((10 << 24) | INT_CFG_IRQ_EN_);

	if (pdata->config.irq_polarity) {
		FUNC0(pdata, ifup, "irq polarity: active high");
		intcfg |= INT_CFG_IRQ_POL_;
	} else {
		FUNC0(pdata, ifup, "irq polarity: active low");
	}

	if (pdata->config.irq_type) {
		FUNC0(pdata, ifup, "irq type: push-pull");
		intcfg |= INT_CFG_IRQ_TYPE_;
	} else {
		FUNC0(pdata, ifup, "irq type: open drain");
	}

	FUNC19(pdata, INT_CFG, intcfg);

	FUNC0(pdata, ifup, "Testing irq handler using IRQ %d", dev->irq);
	pdata->software_irq_signal = 0;
	FUNC13();

	irq_flags = FUNC3(dev->irq);
	retval = FUNC12(dev->irq, smsc911x_irqhandler,
			     irq_flags | IRQF_SHARED, dev->name, dev);
	if (retval) {
		FUNC1(pdata, probe,
			  "Unable to claim requested irq: %d", dev->irq);
		goto mii_free_out;
	}

	temp = FUNC18(pdata, INT_EN);
	temp |= INT_EN_SW_INT_EN_;
	FUNC19(pdata, INT_EN, temp);

	timeout = 1000;
	while (timeout--) {
		if (pdata->software_irq_signal)
			break;
		FUNC4(1);
	}

	if (!pdata->software_irq_signal) {
		FUNC8(dev, "ISR failed signaling test (IRQ %d)\n",
			    dev->irq);
		retval = -ENODEV;
		goto irq_stop_out;
	}
	FUNC0(pdata, ifup, "IRQ handler passed test using IRQ %d",
		   dev->irq);

	FUNC6(dev, "SMSC911x/921x identified at %#08lx, IRQ: %d\n",
		    (unsigned long)pdata->ioaddr, dev->irq);

	/* Reset the last known duplex and carrier */
	pdata->last_duplex = -1;
	pdata->last_carrier = -1;

	/* Bring the PHY up */
	FUNC11(dev->phydev);

	temp = FUNC18(pdata, HW_CFG);
	/* Preserve TX FIFO size and external PHY configuration */
	temp &= (HW_CFG_TX_FIF_SZ_|0x00000FFF);
	temp |= HW_CFG_SF_;
	FUNC19(pdata, HW_CFG, temp);

	temp = FUNC18(pdata, FIFO_INT);
	temp |= FIFO_INT_TX_AVAIL_LEVEL_;
	temp &= ~(FIFO_INT_RX_STS_LEVEL_);
	FUNC19(pdata, FIFO_INT, temp);

	/* set RX Data offset to 2 bytes for alignment */
	FUNC19(pdata, RX_CFG, (NET_IP_ALIGN << 8));

	/* enable NAPI polling before enabling RX interrupts */
	FUNC5(&pdata->napi);

	temp = FUNC18(pdata, INT_EN);
	temp |= (INT_EN_TDFA_EN_ | INT_EN_RSFL_EN_ | INT_EN_RXSTOP_INT_EN_);
	FUNC19(pdata, INT_EN, temp);

	FUNC22(&pdata->mac_lock);
	temp = FUNC15(pdata, MAC_CR);
	temp |= (MAC_CR_TXEN_ | MAC_CR_RXEN_ | MAC_CR_HBDIS_);
	FUNC16(pdata, MAC_CR, temp);
	FUNC23(&pdata->mac_lock);

	FUNC19(pdata, TX_CFG, TX_CFG_TX_ON_);

	FUNC9(dev);
	return 0;

irq_stop_out:
	FUNC2(dev->irq, dev);
mii_free_out:
	FUNC10(dev->phydev);
	dev->phydev = NULL;
out:
	return retval;
}
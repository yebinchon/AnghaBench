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
typedef  int u32 ;
struct smsc9420_pdata {int software_irq_signal; int /*<<< orphan*/  int_lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_CFG ; 
 int BUS_CFG_RXTXWEIGHT_4_1 ; 
 int /*<<< orphan*/  BUS_MODE ; 
 int BUS_MODE_DBO_ ; 
 int BUS_MODE_DMA_BURST_LENGTH_16 ; 
 int /*<<< orphan*/  DMAC_CONTROL ; 
 int DMAC_CONTROL_OSF_ ; 
 int DMAC_CONTROL_SF_ ; 
 int DMAC_CONTROL_SR_ ; 
 int DMAC_CONTROL_ST_ ; 
 int /*<<< orphan*/  DMAC_INTR_ENA ; 
 int DMAC_INTR_ENA_NIS_ ; 
 int DMAC_INTR_ENA_RX_ ; 
 int DMAC_INTR_ENA_TX_ ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EADDRNOTAVAIL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIO_CFG ; 
 int GPIO_CFG_LED_1_ ; 
 int GPIO_CFG_LED_2_ ; 
 int GPIO_CFG_LED_3_ ; 
 int /*<<< orphan*/  INT_CFG ; 
 int INT_CFG_INT_DEAS_MASK ; 
 int INT_CFG_IRQ_EN_ ; 
 int /*<<< orphan*/  INT_CTL ; 
 int INT_CTL_SW_INT_EN_ ; 
 int INT_DEAS_TIME ; 
 int /*<<< orphan*/  INT_STAT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_RXEN_ ; 
 int MAC_CR_TXEN_ ; 
 int /*<<< orphan*/  RX_POLL_DEMAND ; 
 int /*<<< orphan*/  FUNC0 (int const,struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct smsc9420_pdata* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smsc9420_pdata*) ; 
 int FUNC11 (struct smsc9420_pdata*) ; 
 int FUNC12 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC14 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC15 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  smsc9420_isr ; 
 int FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct smsc9420_pdata*) ; 
 int FUNC18 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC23(struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC4(dev);
	u32 bus_mode, mac_cr, dmac_control, int_cfg, dma_intr_ena, int_ctl;
	const int irq = pd->pdev->irq;
	unsigned long flags;
	int result = 0, timeout;

	if (!FUNC1(dev->dev_addr)) {
		FUNC8(pd, ifup, pd->dev,
			   "dev_addr is not a valid MAC address\n");
		result = -EADDRNOTAVAIL;
		goto out_0;
	}

	FUNC5(dev);

	/* disable, mask and acknowledge all interrupts */
	FUNC21(&pd->int_lock, flags);
	int_cfg = FUNC18(pd, INT_CFG) & (~INT_CFG_IRQ_EN_);
	FUNC19(pd, INT_CFG, int_cfg);
	FUNC19(pd, INT_CTL, 0);
	FUNC22(&pd->int_lock, flags);
	FUNC19(pd, DMAC_INTR_ENA, 0);
	FUNC19(pd, INT_STAT, 0xFFFFFFFF);
	FUNC17(pd);

	result = FUNC10(irq, smsc9420_isr, IRQF_SHARED, DRV_NAME, pd);
	if (result) {
		FUNC8(pd, ifup, pd->dev, "Unable to use IRQ = %d\n", irq);
		result = -ENODEV;
		goto out_0;
	}

	FUNC13(pd);

	/* make sure MAC_CR is sane */
	FUNC19(pd, MAC_CR, 0);

	FUNC20(dev);

	/* Configure GPIO pins to drive LEDs */
	FUNC19(pd, GPIO_CFG,
		(GPIO_CFG_LED_3_ | GPIO_CFG_LED_2_ | GPIO_CFG_LED_1_));

	bus_mode = BUS_MODE_DMA_BURST_LENGTH_16;

#ifdef __BIG_ENDIAN
	bus_mode |= BUS_MODE_DBO_;
#endif

	FUNC19(pd, BUS_MODE, bus_mode);

	FUNC17(pd);

	/* set bus master bridge arbitration priority for Rx and TX DMA */
	FUNC19(pd, BUS_CFG, BUS_CFG_RXTXWEIGHT_4_1);

	FUNC19(pd, DMAC_CONTROL,
		(DMAC_CONTROL_SF_ | DMAC_CONTROL_OSF_));

	FUNC17(pd);

	/* test the IRQ connection to the ISR */
	FUNC6(pd, ifup, pd->dev, "Testing ISR using IRQ %d\n", irq);
	pd->software_irq_signal = false;

	FUNC21(&pd->int_lock, flags);
	/* configure interrupt deassertion timer and enable interrupts */
	int_cfg = FUNC18(pd, INT_CFG) | INT_CFG_IRQ_EN_;
	int_cfg &= ~(INT_CFG_INT_DEAS_MASK);
	int_cfg |= (INT_DEAS_TIME & INT_CFG_INT_DEAS_MASK);
	FUNC19(pd, INT_CFG, int_cfg);

	/* unmask software interrupt */
	int_ctl = FUNC18(pd, INT_CTL) | INT_CTL_SW_INT_EN_;
	FUNC19(pd, INT_CTL, int_ctl);
	FUNC22(&pd->int_lock, flags);
	FUNC17(pd);

	timeout = 1000;
	while (timeout--) {
		if (pd->software_irq_signal)
			break;
		FUNC2(1);
	}

	/* disable interrupts */
	FUNC21(&pd->int_lock, flags);
	int_cfg = FUNC18(pd, INT_CFG) & (~INT_CFG_IRQ_EN_);
	FUNC19(pd, INT_CFG, int_cfg);
	FUNC22(&pd->int_lock, flags);

	if (!pd->software_irq_signal) {
		FUNC8(pd, ifup, pd->dev, "ISR failed signaling test\n");
		result = -ENODEV;
		goto out_free_irq_1;
	}

	FUNC6(pd, ifup, pd->dev, "ISR passed test using IRQ %d\n", irq);

	result = FUNC12(pd);
	if (result) {
		FUNC8(pd, ifup, pd->dev,
			   "Failed to Initialize tx dma ring\n");
		result = -ENOMEM;
		goto out_free_irq_1;
	}

	result = FUNC11(pd);
	if (result) {
		FUNC8(pd, ifup, pd->dev,
			   "Failed to Initialize rx dma ring\n");
		result = -ENOMEM;
		goto out_free_tx_ring_2;
	}

	result = FUNC16(dev);
	if (result) {
		FUNC8(pd, ifup, pd->dev, "Failed to initialize Phy\n");
		result = -ENODEV;
		goto out_free_rx_ring_3;
	}

	/* Bring the PHY up */
	FUNC9(dev->phydev);

	FUNC3(&pd->napi);

	/* start tx and rx */
	mac_cr = FUNC18(pd, MAC_CR) | MAC_CR_TXEN_ | MAC_CR_RXEN_;
	FUNC19(pd, MAC_CR, mac_cr);

	dmac_control = FUNC18(pd, DMAC_CONTROL);
	dmac_control |= DMAC_CONTROL_ST_ | DMAC_CONTROL_SR_;
	FUNC19(pd, DMAC_CONTROL, dmac_control);
	FUNC17(pd);

	dma_intr_ena = FUNC18(pd, DMAC_INTR_ENA);
	dma_intr_ena |=
		(DMAC_INTR_ENA_TX_ | DMAC_INTR_ENA_RX_ | DMAC_INTR_ENA_NIS_);
	FUNC19(pd, DMAC_INTR_ENA, dma_intr_ena);
	FUNC17(pd);

	FUNC7(dev);

	FUNC19(pd, RX_POLL_DEMAND, 1);

	/* enable interrupts */
	FUNC21(&pd->int_lock, flags);
	int_cfg = FUNC18(pd, INT_CFG) | INT_CFG_IRQ_EN_;
	FUNC19(pd, INT_CFG, int_cfg);
	FUNC22(&pd->int_lock, flags);

	return 0;

out_free_rx_ring_3:
	FUNC14(pd);
out_free_tx_ring_2:
	FUNC15(pd);
out_free_irq_1:
	FUNC0(irq, pd);
out_0:
	return result;
}
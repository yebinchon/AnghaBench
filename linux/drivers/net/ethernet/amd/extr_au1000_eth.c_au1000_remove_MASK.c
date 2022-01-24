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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct au1000_private {int /*<<< orphan*/  enable; int /*<<< orphan*/  mac; int /*<<< orphan*/  macdma; int /*<<< orphan*/  dma_addr; scalar_t__ vaddr; scalar_t__* tx_db_inuse; scalar_t__* rx_db_inuse; int /*<<< orphan*/  mii_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_NON_CONSISTENT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int MAX_BUF_SIZE ; 
 int NUM_RX_BUFFS ; 
 int NUM_RX_DMA ; 
 int NUM_TX_BUFFS ; 
 int NUM_TX_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct au1000_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct au1000_private* FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct net_device *dev = FUNC7(pdev);
	struct au1000_private *aup = FUNC6(dev);
	int i;
	struct resource *base, *macen;

	FUNC11(dev);
	FUNC5(aup->mii_bus);
	FUNC4(aup->mii_bus);

	for (i = 0; i < NUM_RX_DMA; i++)
		if (aup->rx_db_inuse[i])
			FUNC0(aup, aup->rx_db_inuse[i]);

	for (i = 0; i < NUM_TX_DMA; i++)
		if (aup->tx_db_inuse[i])
			FUNC0(aup, aup->tx_db_inuse[i]);

	FUNC1(&pdev->dev, MAX_BUF_SIZE * (NUM_TX_BUFFS + NUM_RX_BUFFS),
			(void *)aup->vaddr, aup->dma_addr,
			DMA_ATTR_NON_CONSISTENT);

	FUNC3(aup->macdma);
	FUNC3(aup->mac);
	FUNC3(aup->enable);

	base = FUNC8(pdev, IORESOURCE_MEM, 2);
	FUNC9(base->start, FUNC10(base));

	base = FUNC8(pdev, IORESOURCE_MEM, 0);
	FUNC9(base->start, FUNC10(base));

	macen = FUNC8(pdev, IORESOURCE_MEM, 1);
	FUNC9(macen->start, FUNC10(macen));

	FUNC2(dev);

	return 0;
}
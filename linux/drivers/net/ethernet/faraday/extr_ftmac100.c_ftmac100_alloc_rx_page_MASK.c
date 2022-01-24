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
struct page {int dummy; } ;
struct net_device {int dummy; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {int /*<<< orphan*/  dev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ftmac100_rxdes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ftmac100_rxdes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC7 (struct ftmac100_rxdes*,struct page*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ftmac100 *priv,
				  struct ftmac100_rxdes *rxdes, gfp_t gfp)
{
	struct net_device *netdev = priv->netdev;
	struct page *page;
	dma_addr_t map;

	page = FUNC1(gfp);
	if (!page) {
		if (FUNC8())
			FUNC9(netdev, "failed to allocate rx page\n");
		return -ENOMEM;
	}

	map = FUNC2(priv->dev, page, 0, RX_BUF_SIZE, DMA_FROM_DEVICE);
	if (FUNC10(FUNC3(priv->dev, map))) {
		if (FUNC8())
			FUNC9(netdev, "failed to map rx page\n");
		FUNC0(page);
		return -ENOMEM;
	}

	FUNC7(rxdes, page);
	FUNC5(rxdes, map);
	FUNC4(rxdes, RX_BUF_SIZE);
	FUNC6(rxdes);
	return 0;
}
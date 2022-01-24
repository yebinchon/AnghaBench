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
struct net_device {int dummy; } ;
struct mtk_mac {int /*<<< orphan*/  phylink; struct mtk_eth* hw; } ;
struct mtk_eth {TYPE_1__* soc; int /*<<< orphan*/  rx_napi; int /*<<< orphan*/  tx_napi; int /*<<< orphan*/  dma_refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_PDMA_GLO_CFG ; 
 int /*<<< orphan*/  MTK_QDMA ; 
 int /*<<< orphan*/  MTK_QDMA_GLO_CFG ; 
 int /*<<< orphan*/  MTK_RX_DONE_INT ; 
 int /*<<< orphan*/  MTK_TX_DONE_INT ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mtk_mac* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct mtk_mac *mac = FUNC6(dev);
	struct mtk_eth *eth = mac->hw;

	FUNC9(mac->phylink);

	FUNC7(dev);

	FUNC8(mac->phylink);

	/* only shutdown DMA if this is the last user */
	if (!FUNC10(&eth->dma_refcnt))
		return 0;

	FUNC4(eth, MTK_TX_DONE_INT);
	FUNC2(eth, MTK_RX_DONE_INT);
	FUNC5(&eth->tx_napi);
	FUNC5(&eth->rx_napi);

	if (FUNC0(eth->soc->caps, MTK_QDMA))
		FUNC3(eth, MTK_QDMA_GLO_CFG);
	FUNC3(eth, MTK_PDMA_GLO_CFG);

	FUNC1(eth);

	return 0;
}
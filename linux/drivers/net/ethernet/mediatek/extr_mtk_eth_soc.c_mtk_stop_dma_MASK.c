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
struct mtk_eth {int /*<<< orphan*/  page_lock; } ;

/* Variables and functions */
 int MTK_RX_DMA_BUSY ; 
 int MTK_RX_DMA_EN ; 
 int MTK_TX_DMA_BUSY ; 
 int MTK_TX_DMA_EN ; 
 int MTK_TX_WB_DDONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mtk_eth*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_eth*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mtk_eth *eth, u32 glo_cfg)
{
	u32 val;
	int i;

	/* stop the dma engine */
	FUNC3(&eth->page_lock);
	val = FUNC1(eth, glo_cfg);
	FUNC2(eth, val & ~(MTK_TX_WB_DDONE | MTK_RX_DMA_EN | MTK_TX_DMA_EN),
		glo_cfg);
	FUNC4(&eth->page_lock);

	/* wait for dma stop */
	for (i = 0; i < 10; i++) {
		val = FUNC1(eth, glo_cfg);
		if (val & (MTK_TX_DMA_BUSY | MTK_RX_DMA_BUSY)) {
			FUNC0(20);
			continue;
		}
		break;
	}
}
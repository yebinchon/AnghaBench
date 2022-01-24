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
struct sk_buff {int dummy; } ;
struct mtk_tx_dma {int /*<<< orphan*/  txd2; void* txd1; void* txd3; } ;
struct mtk_tx_buf {struct sk_buff* skb; } ;
struct mtk_eth {TYPE_1__* soc; } ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 scalar_t__ MTK_DMA_DUMMY_DESC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_QDMA ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  dma_addr0 ; 
 int /*<<< orphan*/  dma_addr1 ; 
 int /*<<< orphan*/  dma_len0 ; 
 int /*<<< orphan*/  dma_len1 ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_tx_buf*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_tx_buf*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC5(struct mtk_eth *eth, struct mtk_tx_buf *tx_buf,
			 struct mtk_tx_dma *txd, dma_addr_t mapped_addr,
			 size_t size, int idx)
{
	if (FUNC0(eth->soc->caps, MTK_QDMA)) {
		FUNC3(tx_buf, dma_addr0, mapped_addr);
		FUNC4(tx_buf, dma_len0, size);
	} else {
		if (idx & 1) {
			txd->txd3 = mapped_addr;
			txd->txd2 |= FUNC2(size);
			FUNC3(tx_buf, dma_addr1, mapped_addr);
			FUNC4(tx_buf, dma_len1, size);
		} else {
			tx_buf->skb = (struct sk_buff *)MTK_DMA_DUMMY_DESC;
			txd->txd1 = mapped_addr;
			txd->txd2 = FUNC1(size);
			FUNC3(tx_buf, dma_addr0, mapped_addr);
			FUNC4(tx_buf, dma_len0, size);
		}
	}
}
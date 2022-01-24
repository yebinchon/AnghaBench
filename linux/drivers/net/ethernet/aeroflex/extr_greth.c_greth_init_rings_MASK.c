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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct greth_private {int tx_free; int /*<<< orphan*/  rx_bd_base_phys; TYPE_1__* regs; int /*<<< orphan*/  tx_bd_base_phys; scalar_t__ tx_last; scalar_t__ tx_next; scalar_t__ rx_cur; int /*<<< orphan*/  dev; int /*<<< orphan*/ ** tx_bufs; int /*<<< orphan*/ ** rx_bufs; struct sk_buff** rx_skbuff; int /*<<< orphan*/  netdev; scalar_t__ gbit_mac; struct greth_bd* tx_bd_base; struct greth_bd* rx_bd_base; } ;
struct greth_bd {int /*<<< orphan*/  stat; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_desc_p; int /*<<< orphan*/  tx_desc_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GRETH_BD_EN ; 
 int GRETH_BD_IE ; 
 int GRETH_BD_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GRETH_RXBD_NUM ; 
 int GRETH_TXBD_NUM ; 
 scalar_t__ MAX_FRAME_SIZE ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct greth_private*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct greth_private *greth)
{
	struct sk_buff *skb;
	struct greth_bd *rx_bd, *tx_bd;
	u32 dma_addr;
	int i;

	rx_bd = greth->rx_bd_base;
	tx_bd = greth->tx_bd_base;

	/* Initialize descriptor rings and buffers */
	if (greth->gbit_mac) {

		for (i = 0; i < GRETH_RXBD_NUM; i++) {
			skb = FUNC8(greth->netdev, MAX_FRAME_SIZE+NET_IP_ALIGN);
			if (skb == NULL) {
				if (FUNC9(greth))
					FUNC1(greth->dev, "Error allocating DMA ring.\n");
				goto cleanup;
			}
			FUNC10(skb, NET_IP_ALIGN);
			dma_addr = FUNC2(greth->dev,
						  skb->data,
						  MAX_FRAME_SIZE+NET_IP_ALIGN,
						  DMA_FROM_DEVICE);

			if (FUNC3(greth->dev, dma_addr)) {
				if (FUNC9(greth))
					FUNC1(greth->dev, "Could not create initial DMA mapping\n");
				goto cleanup;
			}
			greth->rx_skbuff[i] = skb;
			FUNC6(&rx_bd[i].addr, dma_addr);
			FUNC6(&rx_bd[i].stat, GRETH_BD_EN | GRETH_BD_IE);
		}

	} else {

		/* 10/100 MAC uses a fixed set of buffers and copy to/from SKBs */
		for (i = 0; i < GRETH_RXBD_NUM; i++) {

			greth->rx_bufs[i] = FUNC7(MAX_FRAME_SIZE, GFP_KERNEL);

			if (greth->rx_bufs[i] == NULL) {
				if (FUNC9(greth))
					FUNC1(greth->dev, "Error allocating DMA ring.\n");
				goto cleanup;
			}

			dma_addr = FUNC2(greth->dev,
						  greth->rx_bufs[i],
						  MAX_FRAME_SIZE,
						  DMA_FROM_DEVICE);

			if (FUNC3(greth->dev, dma_addr)) {
				if (FUNC9(greth))
					FUNC1(greth->dev, "Could not create initial DMA mapping\n");
				goto cleanup;
			}
			FUNC6(&rx_bd[i].addr, dma_addr);
			FUNC6(&rx_bd[i].stat, GRETH_BD_EN | GRETH_BD_IE);
		}
		for (i = 0; i < GRETH_TXBD_NUM; i++) {

			greth->tx_bufs[i] = FUNC7(MAX_FRAME_SIZE, GFP_KERNEL);

			if (greth->tx_bufs[i] == NULL) {
				if (FUNC9(greth))
					FUNC1(greth->dev, "Error allocating DMA ring.\n");
				goto cleanup;
			}

			dma_addr = FUNC2(greth->dev,
						  greth->tx_bufs[i],
						  MAX_FRAME_SIZE,
						  DMA_TO_DEVICE);

			if (FUNC3(greth->dev, dma_addr)) {
				if (FUNC9(greth))
					FUNC1(greth->dev, "Could not create initial DMA mapping\n");
				goto cleanup;
			}
			FUNC6(&tx_bd[i].addr, dma_addr);
			FUNC6(&tx_bd[i].stat, 0);
		}
	}
	FUNC6(&rx_bd[GRETH_RXBD_NUM - 1].stat,
		       FUNC5(&rx_bd[GRETH_RXBD_NUM - 1].stat) | GRETH_BD_WR);

	/* Initialize pointers. */
	greth->rx_cur = 0;
	greth->tx_next = 0;
	greth->tx_last = 0;
	greth->tx_free = GRETH_TXBD_NUM;

	/* Initialize descriptor base address */
	FUNC0(greth->regs->tx_desc_p, greth->tx_bd_base_phys);
	FUNC0(greth->regs->rx_desc_p, greth->rx_bd_base_phys);

	return 0;

cleanup:
	FUNC4(greth);
	return -ENOMEM;
}
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
struct slic_tx_queue {size_t put_idx; int /*<<< orphan*/  len; struct slic_tx_buffer* txbuffs; } ;
struct slic_tx_desc {void* len; void* paddrh; void* paddrl; void* totlen; } ;
struct slic_tx_buffer {int /*<<< orphan*/  desc_paddr; struct slic_tx_desc* desc; struct sk_buff* skb; } ;
struct slic_device {TYPE_1__* pdev; struct slic_tx_queue txq; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ SLIC_MAX_REQ_TX_DESCS ; 
 int /*<<< orphan*/  SLIC_REG_CBAR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slic_tx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct slic_tx_buffer*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_addr ; 
 int /*<<< orphan*/  map_len ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 struct slic_device* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct slic_tx_queue*) ; 
 size_t FUNC12 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct slic_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static netdev_tx_t FUNC17(struct sk_buff *skb, struct net_device *dev)
{
	struct slic_device *sdev = FUNC8(dev);
	struct slic_tx_queue *txq = &sdev->txq;
	struct slic_tx_buffer *buff;
	struct slic_tx_desc *desc;
	dma_addr_t paddr;
	u32 cbar_val;
	u32 maplen;

	if (FUNC14(FUNC11(txq) < SLIC_MAX_REQ_TX_DESCS)) {
		FUNC7(dev, "BUG! not enough tx LEs left: %u\n",
			   FUNC11(txq));
		return NETDEV_TX_BUSY;
	}

	maplen = FUNC10(skb);
	paddr = FUNC2(&sdev->pdev->dev, skb->data, maplen,
			       DMA_TO_DEVICE);
	if (FUNC3(&sdev->pdev->dev, paddr)) {
		FUNC7(dev, "failed to map tx buffer\n");
		goto drop_skb;
	}

	buff = &txq->txbuffs[txq->put_idx];
	buff->skb = skb;
	FUNC4(buff, map_addr, paddr);
	FUNC5(buff, map_len, maplen);

	desc = buff->desc;
	desc->totlen = FUNC0(maplen);
	desc->paddrl = FUNC0(FUNC6(paddr));
	desc->paddrh = FUNC0(FUNC15(paddr));
	desc->len = FUNC0(maplen);

	txq->put_idx = FUNC12(txq->put_idx, txq->len);

	cbar_val = FUNC6(buff->desc_paddr) | 1;
	/* complete writes to RAM and DMA before hardware is informed */
	FUNC16();

	FUNC13(sdev, SLIC_REG_CBAR, cbar_val);

	if (FUNC11(txq) < SLIC_MAX_REQ_TX_DESCS)
		FUNC9(dev);

	return NETDEV_TX_OK;
drop_skb:
	FUNC1(skb);

	return NETDEV_TX_OK;
}
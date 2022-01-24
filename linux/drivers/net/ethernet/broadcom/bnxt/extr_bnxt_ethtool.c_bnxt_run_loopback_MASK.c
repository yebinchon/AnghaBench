#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct bnxt_tx_ring_info {int /*<<< orphan*/  tx_prod; int /*<<< orphan*/  tx_db; } ;
struct bnxt_rx_ring_info {TYPE_1__* bnapi; } ;
struct bnxt_cp_ring_info {struct bnxt_cp_ring_info** cp_ring_arr; } ;
struct bnxt {int flags; TYPE_2__* pdev; TYPE_3__* dev; int /*<<< orphan*/  rx_copy_thresh; struct bnxt_rx_ring_info* rx_ring; struct bnxt_tx_ring_info* tx_ring; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; scalar_t__ mtu; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct bnxt_cp_ring_info cp_ring; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 size_t BNXT_RX_HDL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnxt*,struct bnxt_cp_ring_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct bnxt_tx_ring_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (TYPE_3__*,int) ; 
 scalar_t__* FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct bnxt *bp)
{
	struct bnxt_tx_ring_info *txr = &bp->tx_ring[0];
	struct bnxt_rx_ring_info *rxr = &bp->rx_ring[0];
	struct bnxt_cp_ring_info *cpr;
	int pkt_size, i = 0;
	struct sk_buff *skb;
	dma_addr_t map;
	u8 *data;
	int rc;

	cpr = &rxr->bnapi->cp_ring;
	if (bp->flags & BNXT_FLAG_CHIP_P5)
		cpr = cpr->cp_ring_arr[BNXT_RX_HDL];
	pkt_size = FUNC9(bp->dev->mtu + ETH_HLEN, bp->rx_copy_thresh);
	skb = FUNC10(bp->dev, pkt_size);
	if (!skb)
		return -ENOMEM;
	data = FUNC11(skb, pkt_size);
	FUNC7(data);
	i += ETH_ALEN;
	FUNC8(&data[i], bp->dev->dev_addr);
	i += ETH_ALEN;
	for ( ; i < pkt_size; i++)
		data[i] = (u8)(i & 0xff);

	map = FUNC4(&bp->pdev->dev, skb->data, pkt_size,
			     PCI_DMA_TODEVICE);
	if (FUNC5(&bp->pdev->dev, map)) {
		FUNC3(skb);
		return -EIO;
	}
	FUNC2(bp, txr, map, pkt_size);

	/* Sync BD data before updating doorbell */
	FUNC12();

	FUNC0(bp, &txr->tx_db, txr->tx_prod);
	rc = FUNC1(bp, cpr, pkt_size);

	FUNC6(&bp->pdev->dev, map, pkt_size, PCI_DMA_TODEVICE);
	FUNC3(skb);
	return rc;
}
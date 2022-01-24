#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct mtk_tx_ring {int /*<<< orphan*/  dma_size; int /*<<< orphan*/  free_count; struct mtk_tx_dma* next_free; struct mtk_tx_dma* last_free; } ;
struct mtk_tx_dma {int txd1; int txd2; int txd3; int txd4; } ;
struct mtk_tx_buf {struct sk_buff* skb; int /*<<< orphan*/  flags; } ;
struct mtk_mac {int id; struct mtk_eth* hw; } ;
struct mtk_eth {TYPE_1__* soc; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int dma_addr_t ;
struct TYPE_4__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MT7628_TX_CTX_IDX0 ; 
 scalar_t__ MTK_DMA_DUMMY_DESC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_QDMA ; 
 int /*<<< orphan*/  MTK_QTX_CTX_PTR ; 
 int /*<<< orphan*/  MTK_TX_DMA_BUF_LEN ; 
 int /*<<< orphan*/  MTK_TX_FLAGS_FPORT0 ; 
 int /*<<< orphan*/  MTK_TX_FLAGS_FPORT1 ; 
 int /*<<< orphan*/  MTK_TX_FLAGS_PAGE0 ; 
 int /*<<< orphan*/  MTK_TX_FLAGS_SINGLE0 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TX_DMA_CHKSUM ; 
 int TX_DMA_DESP2_DEF ; 
 int TX_DMA_FPORT_SHIFT ; 
 int TX_DMA_INS_VLAN ; 
 int TX_DMA_LS0 ; 
 int TX_DMA_LS1 ; 
 int TX_DMA_OWNER_CPU ; 
 int FUNC2 (unsigned int) ; 
 int TX_DMA_SWC ; 
 int TX_DMA_TSO ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_tx_buf*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct mtk_tx_buf* FUNC9 (struct mtk_tx_ring*,struct mtk_tx_dma*) ; 
 void* FUNC10 (struct mtk_tx_ring*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_eth*,struct mtk_tx_buf*) ; 
 int /*<<< orphan*/  FUNC12 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct mtk_mac* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 struct mtk_tx_dma* FUNC18 (struct mtk_tx_ring*,struct mtk_tx_dma*) ; 
 int /*<<< orphan*/  FUNC19 (struct mtk_eth*,struct mtk_tx_buf*,struct mtk_tx_dma*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC22 (struct sk_buff*) ; 
 TYPE_2__* FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int FUNC25 (struct sk_buff*) ; 
 scalar_t__ FUNC26 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct mtk_tx_ring*,struct mtk_tx_dma*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 () ; 

__attribute__((used)) static int FUNC30(struct sk_buff *skb, struct net_device *dev,
		      int tx_num, struct mtk_tx_ring *ring, bool gso)
{
	struct mtk_mac *mac = FUNC14(dev);
	struct mtk_eth *eth = mac->hw;
	struct mtk_tx_dma *itxd, *txd;
	struct mtk_tx_dma *itxd_pdma, *txd_pdma;
	struct mtk_tx_buf *itx_buf, *tx_buf;
	dma_addr_t mapped_addr;
	unsigned int nr_frags;
	int i, n_desc = 1;
	u32 txd4 = 0, fport;
	int k = 0;

	itxd = ring->next_free;
	itxd_pdma = FUNC18(ring, itxd);
	if (itxd == ring->last_free)
		return -ENOMEM;

	/* set the forward port */
	fport = (mac->id + 1) << TX_DMA_FPORT_SHIFT;
	txd4 |= fport;

	itx_buf = FUNC9(ring, itxd);
	FUNC7(itx_buf, 0, sizeof(*itx_buf));

	if (gso)
		txd4 |= TX_DMA_TSO;

	/* TX Checksum offload */
	if (skb->ip_summed == CHECKSUM_PARTIAL)
		txd4 |= TX_DMA_CHKSUM;

	/* VLAN header offload */
	if (FUNC26(skb))
		txd4 |= TX_DMA_INS_VLAN | FUNC25(skb);

	mapped_addr = FUNC5(eth->dev, skb->data,
				     FUNC22(skb), DMA_TO_DEVICE);
	if (FUNC28(FUNC6(eth->dev, mapped_addr)))
		return -ENOMEM;

	FUNC3(itxd->txd1, mapped_addr);
	itx_buf->flags |= MTK_TX_FLAGS_SINGLE0;
	itx_buf->flags |= (!mac->id) ? MTK_TX_FLAGS_FPORT0 :
			  MTK_TX_FLAGS_FPORT1;
	FUNC19(eth, itx_buf, itxd_pdma, mapped_addr, FUNC22(skb),
		     k++);

	/* TX SG offload */
	txd = itxd;
	txd_pdma = FUNC18(ring, txd);
	nr_frags = FUNC23(skb)->nr_frags;

	for (i = 0; i < nr_frags; i++) {
		skb_frag_t *frag = &FUNC23(skb)->frags[i];
		unsigned int offset = 0;
		int frag_size = FUNC21(frag);

		while (frag_size) {
			bool last_frag = false;
			unsigned int frag_map_size;
			bool new_desc = true;

			if (FUNC0(eth->soc->caps, MTK_QDMA) ||
			    (i & 0x1)) {
				txd = FUNC10(ring, txd->txd2);
				txd_pdma = FUNC18(ring, txd);
				if (txd == ring->last_free)
					goto err_dma;

				n_desc++;
			} else {
				new_desc = false;
			}


			frag_map_size = FUNC8(frag_size, MTK_TX_DMA_BUF_LEN);
			mapped_addr = FUNC20(eth->dev, frag, offset,
						       frag_map_size,
						       DMA_TO_DEVICE);
			if (FUNC28(FUNC6(eth->dev, mapped_addr)))
				goto err_dma;

			if (i == nr_frags - 1 &&
			    (frag_size - frag_map_size) == 0)
				last_frag = true;

			FUNC3(txd->txd1, mapped_addr);
			FUNC3(txd->txd3, (TX_DMA_SWC |
					       FUNC2(frag_map_size) |
					       last_frag * TX_DMA_LS0));
			FUNC3(txd->txd4, fport);

			tx_buf = FUNC9(ring, txd);
			if (new_desc)
				FUNC7(tx_buf, 0, sizeof(*tx_buf));
			tx_buf->skb = (struct sk_buff *)MTK_DMA_DUMMY_DESC;
			tx_buf->flags |= MTK_TX_FLAGS_PAGE0;
			tx_buf->flags |= (!mac->id) ? MTK_TX_FLAGS_FPORT0 :
					 MTK_TX_FLAGS_FPORT1;

			FUNC19(eth, tx_buf, txd_pdma, mapped_addr,
				     frag_map_size, k++);

			frag_size -= frag_map_size;
			offset += frag_map_size;
		}
	}

	/* store skb to cleanup */
	itx_buf->skb = skb;

	FUNC3(itxd->txd4, txd4);
	FUNC3(itxd->txd3, (TX_DMA_SWC | FUNC2(FUNC22(skb)) |
				(!nr_frags * TX_DMA_LS0)));
	if (!FUNC0(eth->soc->caps, MTK_QDMA)) {
		if (k & 0x1)
			txd_pdma->txd2 |= TX_DMA_LS0;
		else
			txd_pdma->txd2 |= TX_DMA_LS1;
	}

	FUNC15(dev, skb->len);
	FUNC24(skb);

	ring->next_free = FUNC10(ring, txd->txd2);
	FUNC4(n_desc, &ring->free_count);

	/* make sure that all changes to the dma ring are flushed before we
	 * continue
	 */
	FUNC29();

	if (FUNC0(eth->soc->caps, MTK_QDMA)) {
		if (FUNC17(FUNC13(dev, 0)) ||
		    !FUNC16())
			FUNC12(eth, txd->txd2, MTK_QTX_CTX_PTR);
	} else {
		int next_idx = FUNC1(FUNC27(ring, txd),
					     ring->dma_size);
		FUNC12(eth, next_idx, MT7628_TX_CTX_IDX0);
	}

	return 0;

err_dma:
	do {
		tx_buf = FUNC9(ring, itxd);

		/* unmap dma */
		FUNC11(eth, tx_buf);

		itxd->txd3 = TX_DMA_LS0 | TX_DMA_OWNER_CPU;
		if (!FUNC0(eth->soc->caps, MTK_QDMA))
			itxd_pdma->txd2 = TX_DMA_DESP2_DEF;

		itxd = FUNC10(ring, itxd->txd2);
		itxd_pdma = FUNC18(ring, itxd);
	} while (itxd != txd);

	return -ENOMEM;
}
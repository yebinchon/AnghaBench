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
typedef  unsigned int u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  sw_err_cnt; } ;
struct hns3_enet_ring {size_t next_to_use; struct hns3_desc* desc; struct hns3_desc_cb* desc_cb; int /*<<< orphan*/  syncp; TYPE_1__ stats; } ;
struct hns3_desc_cb {unsigned int length; int type; void* dma; void* priv; } ;
struct TYPE_4__ {void* bdtp_fe_sc_vld_ra_ri; void* send_size; } ;
struct hns3_desc {TYPE_2__ tx; void* addr; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  enum hns_desc_type { ____Placeholder_hns_desc_type } hns_desc_type ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int DESC_TYPE_PAGE ; 
 int DESC_TYPE_SKB ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 unsigned int HNS3_MAX_BD_SIZE ; 
 unsigned int HNS3_TX_LAST_SIZE_M ; 
 void* FUNC0 (unsigned int) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,void*) ; 
 int FUNC4 (struct hns3_enet_ring*,struct sk_buff*,struct hns3_desc*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  next_to_use ; 
 int /*<<< orphan*/  FUNC8 (struct hns3_enet_ring*,int /*<<< orphan*/ ) ; 
 struct device* FUNC9 (struct hns3_enet_ring*) ; 
 void* FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct hns3_enet_ring *ring, void *priv,
			  unsigned int size, int frag_end,
			  enum hns_desc_type type)
{
	struct hns3_desc_cb *desc_cb = &ring->desc_cb[ring->next_to_use];
	struct hns3_desc *desc = &ring->desc[ring->next_to_use];
	struct device *dev = FUNC9(ring);
	skb_frag_t *frag;
	unsigned int frag_buf_num;
	int k, sizeoflast;
	dma_addr_t dma;

	if (type == DESC_TYPE_SKB) {
		struct sk_buff *skb = (struct sk_buff *)priv;
		int ret;

		ret = FUNC4(ring, skb, desc);
		if (FUNC13(ret))
			return ret;

		dma = FUNC2(dev, skb->data, size, DMA_TO_DEVICE);
	} else {
		frag = (skb_frag_t *)priv;
		dma = FUNC10(dev, frag, 0, size, DMA_TO_DEVICE);
	}

	if (FUNC13(FUNC3(dev, dma))) {
		FUNC11(&ring->syncp);
		ring->stats.sw_err_cnt++;
		FUNC12(&ring->syncp);
		return -ENOMEM;
	}

	desc_cb->length = size;

	if (FUNC7(size <= HNS3_MAX_BD_SIZE)) {
		u16 bdtp_fe_sc_vld_ra_ri = 0;

		desc_cb->priv = priv;
		desc_cb->dma = dma;
		desc_cb->type = type;
		desc->addr = FUNC1(dma);
		desc->tx.send_size = FUNC0(size);
		FUNC5(&bdtp_fe_sc_vld_ra_ri, frag_end);
		desc->tx.bdtp_fe_sc_vld_ra_ri =
			FUNC0(bdtp_fe_sc_vld_ra_ri);

		FUNC8(ring, next_to_use);
		return 0;
	}

	frag_buf_num = FUNC6(size);
	sizeoflast = size & HNS3_TX_LAST_SIZE_M;
	sizeoflast = sizeoflast ? sizeoflast : HNS3_MAX_BD_SIZE;

	/* When frag size is bigger than hardware limit, split this frag */
	for (k = 0; k < frag_buf_num; k++) {
		u16 bdtp_fe_sc_vld_ra_ri = 0;

		/* The txbd's baseinfo of DESC_TYPE_PAGE & DESC_TYPE_SKB */
		desc_cb->priv = priv;
		desc_cb->dma = dma + HNS3_MAX_BD_SIZE * k;
		desc_cb->type = (type == DESC_TYPE_SKB && !k) ?
				DESC_TYPE_SKB : DESC_TYPE_PAGE;

		/* now, fill the descriptor */
		desc->addr = FUNC1(dma + HNS3_MAX_BD_SIZE * k);
		desc->tx.send_size = FUNC0((k == frag_buf_num - 1) ?
				     (u16)sizeoflast : (u16)HNS3_MAX_BD_SIZE);
		FUNC5(&bdtp_fe_sc_vld_ra_ri,
				       frag_end && (k == frag_buf_num - 1) ?
						1 : 0);
		desc->tx.bdtp_fe_sc_vld_ra_ri =
				FUNC0(bdtp_fe_sc_vld_ra_ri);

		/* move ring pointer to next */
		FUNC8(ring, next_to_use);

		desc_cb = &ring->desc_cb[ring->next_to_use];
		desc = &ring->desc[ring->next_to_use];
	}

	return 0;
}
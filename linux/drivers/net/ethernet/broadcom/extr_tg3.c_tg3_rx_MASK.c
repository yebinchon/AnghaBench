#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  size_t u32 ;
typedef  size_t u16 ;
struct tg3_rx_prodring_set {size_t rx_std_prod_idx; size_t rx_jmb_prod_idx; struct ring_info* rx_jmb_buffers; struct ring_info* rx_std_buffers; } ;
struct tg3_rx_buffer_desc {size_t opaque; int err_vlan; unsigned int idx_len; int type_flags; int ip_tcp_csum; } ;
struct tg3_napi {size_t rx_rcb_ptr; size_t* rx_rcb_prod_idx; int /*<<< orphan*/  napi; int /*<<< orphan*/  consmbox; struct tg3_rx_prodring_set prodring; struct tg3_rx_buffer_desc* rx_rcb; struct tg3* tp; } ;
struct tg3 {int rx_mode; size_t rx_std_max_post; size_t rx_std_ring_mask; size_t rx_ret_ring_mask; size_t rx_jmb_ring_mask; int rx_refill; struct tg3_napi* napi; TYPE_1__* dev; int /*<<< orphan*/  pdev; int /*<<< orphan*/  rx_dropped; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct ring_info {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int features; unsigned int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ENABLE_RSS ; 
 unsigned int ETH_FCS_LEN ; 
 unsigned int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RXD_ERR_MASK ; 
 int RXD_FLAG_PTPSTAT_MASK ; 
 int RXD_FLAG_PTPSTAT_PTPV1 ; 
 int RXD_FLAG_PTPSTAT_PTPV2 ; 
 int RXD_FLAG_TCPUDP_CSUM ; 
 int RXD_FLAG_VLAN ; 
 unsigned int RXD_LEN_MASK ; 
 unsigned int RXD_LEN_SHIFT ; 
 size_t RXD_OPAQUE_INDEX_MASK ; 
 size_t RXD_OPAQUE_RING_JUMBO ; 
 size_t RXD_OPAQUE_RING_MASK ; 
 size_t RXD_OPAQUE_RING_STD ; 
 int RXD_TCPCSUM_MASK ; 
 int RXD_TCPCSUM_SHIFT ; 
 int RXD_VLAN_MASK ; 
 int RX_MODE_KEEP_VLAN_TAG ; 
 int TG3_RAW_IP_ALIGN ; 
 unsigned int FUNC0 (struct tg3*) ; 
 int /*<<< orphan*/  TG3_RX_JMB_PROD_IDX_REG ; 
 int FUNC1 (struct tg3*) ; 
 int /*<<< orphan*/  TG3_RX_STD_PROD_IDX_REG ; 
 int /*<<< orphan*/  TG3_RX_TSTAMP_LSB ; 
 int /*<<< orphan*/  TG3_RX_TSTAMP_MSB ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 (struct tg3*,struct tg3_rx_prodring_set*,size_t,size_t,unsigned int*) ; 
 int /*<<< orphan*/  FUNC23 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct tg3*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct tg3_napi*,struct tg3_rx_prodring_set*,size_t,size_t,size_t) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 () ; 

__attribute__((used)) static int FUNC31(struct tg3_napi *tnapi, int budget)
{
	struct tg3 *tp = tnapi->tp;
	u32 work_mask, rx_std_posted = 0;
	u32 std_prod_idx, jmb_prod_idx;
	u32 sw_idx = tnapi->rx_rcb_ptr;
	u16 hw_idx;
	int received;
	struct tg3_rx_prodring_set *tpr = &tnapi->prodring;

	hw_idx = *(tnapi->rx_rcb_prod_idx);
	/*
	 * We need to order the read of hw_idx and the read of
	 * the opaque cookie.
	 */
	FUNC16();
	work_mask = 0;
	received = 0;
	std_prod_idx = tpr->rx_std_prod_idx;
	jmb_prod_idx = tpr->rx_jmb_prod_idx;
	while (sw_idx != hw_idx && budget > 0) {
		struct ring_info *ri;
		struct tg3_rx_buffer_desc *desc = &tnapi->rx_rcb[sw_idx];
		unsigned int len;
		struct sk_buff *skb;
		dma_addr_t dma_addr;
		u32 opaque_key, desc_idx, *post_ptr;
		u8 *data;
		u64 tstamp = 0;

		desc_idx = desc->opaque & RXD_OPAQUE_INDEX_MASK;
		opaque_key = desc->opaque & RXD_OPAQUE_RING_MASK;
		if (opaque_key == RXD_OPAQUE_RING_STD) {
			ri = &tp->napi[0].prodring.rx_std_buffers[desc_idx];
			dma_addr = FUNC5(ri, mapping);
			data = ri->data;
			post_ptr = &std_prod_idx;
			rx_std_posted++;
		} else if (opaque_key == RXD_OPAQUE_RING_JUMBO) {
			ri = &tp->napi[0].prodring.rx_jmb_buffers[desc_idx];
			dma_addr = FUNC5(ri, mapping);
			data = ri->data;
			post_ptr = &jmb_prod_idx;
		} else
			goto next_pkt_nopost;

		work_mask |= opaque_key;

		if (desc->err_vlan & RXD_ERR_MASK) {
		drop_it:
			FUNC26(tnapi, tpr, opaque_key,
				       desc_idx, *post_ptr);
		drop_it_no_recycle:
			/* Other statistics kept track of by card. */
			tp->rx_dropped++;
			goto next_pkt;
		}

		FUNC15(data + FUNC1(tp));
		len = ((desc->idx_len & RXD_LEN_MASK) >> RXD_LEN_SHIFT) -
		      ETH_FCS_LEN;

		if ((desc->type_flags & RXD_FLAG_PTPSTAT_MASK) ==
		     RXD_FLAG_PTPSTAT_PTPV1 ||
		    (desc->type_flags & RXD_FLAG_PTPSTAT_MASK) ==
		     RXD_FLAG_PTPSTAT_PTPV2) {
			tstamp = FUNC27(TG3_RX_TSTAMP_LSB);
			tstamp |= (u64)FUNC27(TG3_RX_TSTAMP_MSB) << 32;
		}

		if (len > FUNC0(tp)) {
			int skb_size;
			unsigned int frag_size;

			skb_size = FUNC22(tp, tpr, opaque_key,
						    *post_ptr, &frag_size);
			if (skb_size < 0)
				goto drop_it;

			FUNC14(tp->pdev, dma_addr, skb_size,
					 PCI_DMA_FROMDEVICE);

			/* Ensure that the update to the data happens
			 * after the usage of the old DMA mapping.
			 */
			FUNC21();

			ri->data = NULL;

			skb = FUNC3(data, frag_size);
			if (!skb) {
				FUNC24(frag_size != 0, data);
				goto drop_it_no_recycle;
			}
			FUNC20(skb, FUNC1(tp));
		} else {
			FUNC26(tnapi, tpr, opaque_key,
				       desc_idx, *post_ptr);

			skb = FUNC11(tp->dev,
					       len + TG3_RAW_IP_ALIGN);
			if (skb == NULL)
				goto drop_it_no_recycle;

			FUNC20(skb, TG3_RAW_IP_ALIGN);
			FUNC12(tp->pdev, dma_addr, len, PCI_DMA_FROMDEVICE);
			FUNC8(skb->data,
			       data + FUNC1(tp),
			       len);
			FUNC13(tp->pdev, dma_addr, len, PCI_DMA_FROMDEVICE);
		}

		FUNC19(skb, len);
		if (tstamp)
			FUNC25(tp, tstamp,
						 FUNC18(skb));

		if ((tp->dev->features & NETIF_F_RXCSUM) &&
		    (desc->type_flags & RXD_FLAG_TCPUDP_CSUM) &&
		    (((desc->ip_tcp_csum & RXD_TCPCSUM_MASK)
		      >> RXD_TCPCSUM_SHIFT) == 0xffff))
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		else
			FUNC17(skb);

		skb->protocol = FUNC6(skb, tp->dev);

		if (len > (tp->dev->mtu + ETH_HLEN) &&
		    skb->protocol != FUNC7(ETH_P_8021Q) &&
		    skb->protocol != FUNC7(ETH_P_8021AD)) {
			FUNC4(skb);
			goto drop_it_no_recycle;
		}

		if (desc->type_flags & RXD_FLAG_VLAN &&
		    !(tp->rx_mode & RX_MODE_KEEP_VLAN_TAG))
			FUNC2(skb, FUNC7(ETH_P_8021Q),
					       desc->err_vlan & RXD_VLAN_MASK);

		FUNC9(&tnapi->napi, skb);

		received++;
		budget--;

next_pkt:
		(*post_ptr)++;

		if (FUNC29(rx_std_posted >= tp->rx_std_max_post)) {
			tpr->rx_std_prod_idx = std_prod_idx &
					       tp->rx_std_ring_mask;
			FUNC28(TG3_RX_STD_PROD_IDX_REG,
				     tpr->rx_std_prod_idx);
			work_mask &= ~RXD_OPAQUE_RING_STD;
			rx_std_posted = 0;
		}
next_pkt_nopost:
		sw_idx++;
		sw_idx &= tp->rx_ret_ring_mask;

		/* Refresh hw_idx to see if there is new work */
		if (sw_idx == hw_idx) {
			hw_idx = *(tnapi->rx_rcb_prod_idx);
			FUNC16();
		}
	}

	/* ACK the status ring. */
	tnapi->rx_rcb_ptr = sw_idx;
	FUNC28(tnapi->consmbox, sw_idx);

	/* Refill RX ring(s). */
	if (!FUNC23(tp, ENABLE_RSS)) {
		/* Sync BD data before updating mailbox */
		FUNC30();

		if (work_mask & RXD_OPAQUE_RING_STD) {
			tpr->rx_std_prod_idx = std_prod_idx &
					       tp->rx_std_ring_mask;
			FUNC28(TG3_RX_STD_PROD_IDX_REG,
				     tpr->rx_std_prod_idx);
		}
		if (work_mask & RXD_OPAQUE_RING_JUMBO) {
			tpr->rx_jmb_prod_idx = jmb_prod_idx &
					       tp->rx_jmb_ring_mask;
			FUNC28(TG3_RX_JMB_PROD_IDX_REG,
				     tpr->rx_jmb_prod_idx);
		}
	} else if (work_mask) {
		/* rx_std_buffers[] and rx_jmb_buffers[] entries must be
		 * updated before the producer indices can be updated.
		 */
		FUNC21();

		tpr->rx_std_prod_idx = std_prod_idx & tp->rx_std_ring_mask;
		tpr->rx_jmb_prod_idx = jmb_prod_idx & tp->rx_jmb_ring_mask;

		if (tnapi != &tp->napi[1]) {
			tp->rx_refill = true;
			FUNC10(&tp->napi[1].napi);
		}
	}

	return received;
}
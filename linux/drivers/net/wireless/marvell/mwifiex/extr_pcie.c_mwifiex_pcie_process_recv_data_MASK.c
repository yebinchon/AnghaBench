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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {size_t rxbd_wrptr; size_t rxbd_rdptr; size_t txbd_wrptr; struct mwifiex_pfu_buf_desc** rxbd_ring; struct sk_buff** rx_buf_list; TYPE_1__ pcie; } ;
struct mwifiex_pfu_buf_desc {int flags; int /*<<< orphan*/  len; void* paddr; scalar_t__ offset; int /*<<< orphan*/  frag_len; } ;
struct mwifiex_pcie_card_reg {size_t rx_mask; size_t rx_rollover_ind; int ring_flag_sop; int ring_flag_eop; size_t tx_wrap_mask; int /*<<< orphan*/  rx_wrptr; int /*<<< orphan*/  rx_rdptr; scalar_t__ pfu_enabled; } ;
struct mwifiex_pcie_buf_desc {int flags; int /*<<< orphan*/  len; void* paddr; scalar_t__ offset; int /*<<< orphan*/  frag_len; } ;
struct mwifiex_adapter {scalar_t__ intf_hdr_len; int data_received; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  rx_data_q; scalar_t__ rx_work_enabled; struct pcie_service_card* card; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INFO ; 
 int MWIFIEX_MAX_TXRX_BD ; 
 scalar_t__ MWIFIEX_RX_DATA_BUF_SIZE ; 
 void* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_adapter*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct mwifiex_adapter*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC11 (struct mwifiex_adapter*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct mwifiex_adapter*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC17(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
	u32 wrptr, rd_index, tx_val;
	dma_addr_t buf_pa;
	int ret = 0;
	struct sk_buff *skb_tmp = NULL;
	struct mwifiex_pcie_buf_desc *desc;
	struct mwifiex_pfu_buf_desc *desc2;

	if (!FUNC9(adapter))
		FUNC10(adapter);

	/* Read the RX ring Write pointer set by firmware */
	if (FUNC11(adapter, reg->rx_wrptr, &wrptr)) {
		FUNC6(adapter, ERROR,
			    "RECV DATA: failed to read reg->rx_wrptr\n");
		ret = -1;
		goto done;
	}
	card->rxbd_wrptr = wrptr;

	while (((wrptr & reg->rx_mask) !=
		(card->rxbd_rdptr & reg->rx_mask)) ||
	       ((wrptr & reg->rx_rollover_ind) ==
		(card->rxbd_rdptr & reg->rx_rollover_ind))) {
		struct sk_buff *skb_data;
		u16 rx_len;

		rd_index = card->rxbd_rdptr & reg->rx_mask;
		skb_data = card->rx_buf_list[rd_index];

		/* If skb allocation was failed earlier for Rx packet,
		 * rx_buf_list[rd_index] would have been left with a NULL.
		 */
		if (!skb_data)
			return -ENOMEM;

		FUNC12(adapter, skb_data, PCI_DMA_FROMDEVICE);
		card->rx_buf_list[rd_index] = NULL;

		/* Get data length from interface header -
		 * first 2 bytes for len, next 2 bytes is for type
		 */
		rx_len = FUNC4(skb_data->data);
		if (FUNC1(rx_len <= adapter->intf_hdr_len ||
			    rx_len > MWIFIEX_RX_DATA_BUF_SIZE)) {
			FUNC6(adapter, ERROR,
				    "Invalid RX len %d, Rd=%#x, Wr=%#x\n",
				    rx_len, card->rxbd_rdptr, wrptr);
			FUNC3(skb_data);
		} else {
			FUNC15(skb_data, rx_len);
			FUNC6(adapter, DATA,
				    "info: RECV DATA: Rd=%#x, Wr=%#x, Len=%d\n",
				    card->rxbd_rdptr, wrptr, rx_len);
			FUNC14(skb_data, adapter->intf_hdr_len);
			if (adapter->rx_work_enabled) {
				FUNC16(&adapter->rx_data_q, skb_data);
				adapter->data_received = true;
				FUNC2(&adapter->rx_pending);
			} else {
				FUNC7(adapter, skb_data);
			}
		}

		skb_tmp = FUNC5(MWIFIEX_RX_DATA_BUF_SIZE,
						      GFP_KERNEL);
		if (!skb_tmp) {
			FUNC6(adapter, ERROR,
				    "Unable to allocate skb.\n");
			return -ENOMEM;
		}

		if (FUNC8(adapter, skb_tmp,
					   MWIFIEX_RX_DATA_BUF_SIZE,
					   PCI_DMA_FROMDEVICE))
			return -1;

		buf_pa = FUNC0(skb_tmp);

		FUNC6(adapter, INFO,
			    "RECV DATA: Attach new sk_buff %p at rxbd_rdidx=%d\n",
			    skb_tmp, rd_index);
		card->rx_buf_list[rd_index] = skb_tmp;

		if (reg->pfu_enabled) {
			desc2 = card->rxbd_ring[rd_index];
			desc2->paddr = buf_pa;
			desc2->len = skb_tmp->len;
			desc2->frag_len = skb_tmp->len;
			desc2->offset = 0;
			desc2->flags = reg->ring_flag_sop | reg->ring_flag_eop;
		} else {
			desc = card->rxbd_ring[rd_index];
			desc->paddr = buf_pa;
			desc->len = skb_tmp->len;
			desc->flags = 0;
		}

		if ((++card->rxbd_rdptr & reg->rx_mask) ==
							MWIFIEX_MAX_TXRX_BD) {
			card->rxbd_rdptr = ((card->rxbd_rdptr &
					     reg->rx_rollover_ind) ^
					     reg->rx_rollover_ind);
		}
		FUNC6(adapter, DATA,
			    "info: RECV DATA: <Rd: %#x, Wr: %#x>\n",
			    card->rxbd_rdptr, wrptr);

		tx_val = card->txbd_wrptr & reg->tx_wrap_mask;
		/* Write the RX ring read pointer in to reg->rx_rdptr */
		if (FUNC13(adapter, reg->rx_rdptr,
				      card->rxbd_rdptr | tx_val)) {
			FUNC6(adapter, DATA,
				    "RECV DATA: failed to write reg->rx_rdptr\n");
			ret = -1;
			goto done;
		}

		/* Read the RX ring Write pointer set by firmware */
		if (FUNC11(adapter, reg->rx_wrptr, &wrptr)) {
			FUNC6(adapter, ERROR,
				    "RECV DATA: failed to read reg->rx_wrptr\n");
			ret = -1;
			goto done;
		}
		FUNC6(adapter, DATA,
			    "info: RECV DATA: Rcvd packet from fw successfully\n");
		card->rxbd_wrptr = wrptr;
	}

done:
	return ret;
}
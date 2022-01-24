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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {size_t evtbd_rdptr; struct mwifiex_evt_buf_desc** evtbd_ring; struct sk_buff** evt_buf_list; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {size_t evt_rollover_ind; int /*<<< orphan*/  evt_wrptr; } ;
struct mwifiex_evt_buf_desc {int dummy; } ;
struct mwifiex_adapter {int event_received; size_t intf_hdr_len; size_t event_cause; struct sk_buff* event_skb; int /*<<< orphan*/ * event_body; struct pcie_service_card* card; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_INTR_EVENT_DONE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EVENT ; 
 int /*<<< orphan*/  INFO ; 
 int MAX_EVENT_SIZE ; 
 int MWIFIEX_EVENT_HEADER_LEN ; 
 size_t MWIFIEX_EVTBD_MASK ; 
 size_t MWIFIEX_MAX_EVT_BD ; 
 int /*<<< orphan*/  PCIE_CPU_INT_EVENT ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_evt_buf_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC7 (struct mwifiex_adapter*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC12(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
	u32 rdptr = card->evtbd_rdptr & MWIFIEX_EVTBD_MASK;
	u32 wrptr, event;
	struct mwifiex_evt_buf_desc *desc;

	if (!FUNC5(adapter))
		FUNC6(adapter);

	if (adapter->event_received) {
		FUNC4(adapter, EVENT,
			    "info: Event being processed,\t"
			    "do not process this interrupt just yet\n");
		return 0;
	}

	if (rdptr >= MWIFIEX_MAX_EVT_BD) {
		FUNC4(adapter, ERROR,
			    "info: Invalid read pointer...\n");
		return -1;
	}

	/* Read the event ring write pointer set by firmware */
	if (FUNC7(adapter, reg->evt_wrptr, &wrptr)) {
		FUNC4(adapter, ERROR,
			    "EventReady: failed to read reg->evt_wrptr\n");
		return -1;
	}

	FUNC4(adapter, EVENT,
		    "info: EventReady: Initial <Rd: 0x%x, Wr: 0x%x>",
		    card->evtbd_rdptr, wrptr);
	if (((wrptr & MWIFIEX_EVTBD_MASK) != (card->evtbd_rdptr
					      & MWIFIEX_EVTBD_MASK)) ||
	    ((wrptr & reg->evt_rollover_ind) ==
	     (card->evtbd_rdptr & reg->evt_rollover_ind))) {
		struct sk_buff *skb_cmd;
		__le16 data_len = 0;
		u16 evt_len;

		FUNC4(adapter, INFO,
			    "info: Read Index: %d\n", rdptr);
		skb_cmd = card->evt_buf_list[rdptr];
		FUNC8(adapter, skb_cmd, PCI_DMA_FROMDEVICE);

		/* Take the pointer and set it to event pointer in adapter
		   and will return back after event handling callback */
		card->evt_buf_list[rdptr] = NULL;
		desc = card->evtbd_ring[rdptr];
		FUNC3(desc, 0, sizeof(*desc));

		event = FUNC0(
			&skb_cmd->data[adapter->intf_hdr_len]);
		adapter->event_cause = event;
		/* The first 4bytes will be the event transfer header
		   len is 2 bytes followed by type which is 2 bytes */
		FUNC2(&data_len, skb_cmd->data, sizeof(__le16));
		evt_len = FUNC1(data_len);
		FUNC11(skb_cmd, evt_len);
		FUNC10(skb_cmd, adapter->intf_hdr_len);
		FUNC4(adapter, EVENT,
			    "info: Event length: %d\n", evt_len);

		if (evt_len > MWIFIEX_EVENT_HEADER_LEN &&
		    evt_len < MAX_EVENT_SIZE)
			FUNC2(adapter->event_body, skb_cmd->data +
			       MWIFIEX_EVENT_HEADER_LEN, evt_len -
			       MWIFIEX_EVENT_HEADER_LEN);

		adapter->event_received = true;
		adapter->event_skb = skb_cmd;

		/* Do not update the event read pointer here, wait till the
		   buffer is released. This is just to make things simpler,
		   we need to find a better method of managing these buffers.
		*/
	} else {
		if (FUNC9(adapter, PCIE_CPU_INT_EVENT,
				      CPU_INTR_EVENT_DONE)) {
			FUNC4(adapter, ERROR,
				    "Write register failed\n");
			return -1;
		}
	}

	return 0;
}
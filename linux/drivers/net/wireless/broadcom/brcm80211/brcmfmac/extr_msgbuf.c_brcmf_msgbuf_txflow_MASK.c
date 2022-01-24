#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct sk_buff {int priority; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {scalar_t__ low_addr; scalar_t__ high_addr; } ;
struct TYPE_7__ {void* low_addr; void* high_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifidx; void* request_id; int /*<<< orphan*/  msgtype; } ;
struct msgbuf_tx_msghdr {int flags; int seg_cnt; TYPE_4__ metadata_buf_addr; scalar_t__ metadata_buf_len; TYPE_3__ data_buf_addr; int /*<<< orphan*/  data_len; int /*<<< orphan*/  txhdr; TYPE_2__ msg; } ;
struct brcmf_pub {TYPE_1__* bus_if; } ;
struct brcmf_msgbuf {int /*<<< orphan*/  tx_pktids; struct brcmf_pub* drvr; struct brcmf_commonring** flowrings; struct brcmf_flowring* flow; } ;
struct brcmf_flowring {int dummy; } ;
struct brcmf_commonring {int /*<<< orphan*/  outstanding_tx; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_3 ; 
 int BRCMF_MSGBUF_PKT_FLAGS_PRIO_SHIFT ; 
 scalar_t__ BRCMF_MSGBUF_TX_FLUSH_CNT1 ; 
 scalar_t__ BRCMF_MSGBUF_TX_FLUSH_CNT2 ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  MSGBUF_TYPE_TX_POST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_commonring*) ; 
 void* FUNC3 (struct brcmf_commonring*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_commonring*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_commonring*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_commonring*) ; 
 struct sk_buff* FUNC7 (struct brcmf_flowring*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_flowring*,size_t) ; 
 scalar_t__ FUNC9 (struct brcmf_flowring*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_flowring*,size_t,struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC17(struct brcmf_msgbuf *msgbuf, u16 flowid)
{
	struct brcmf_flowring *flow = msgbuf->flow;
	struct brcmf_pub *drvr = msgbuf->drvr;
	struct brcmf_commonring *commonring;
	void *ret_ptr;
	u32 count;
	struct sk_buff *skb;
	dma_addr_t physaddr;
	u32 pktid;
	struct msgbuf_tx_msghdr *tx_msghdr;
	u64 address;

	commonring = msgbuf->flowrings[flowid];
	if (!FUNC5(commonring))
		return;

	FUNC2(commonring);

	count = BRCMF_MSGBUF_TX_FLUSH_CNT2 - BRCMF_MSGBUF_TX_FLUSH_CNT1;
	while (FUNC9(flow, flowid)) {
		skb = FUNC7(flow, flowid);
		if (skb == NULL) {
			FUNC1(drvr, "No SKB, but qlen %d\n",
				 FUNC9(flow, flowid));
			break;
		}
		FUNC16(skb);
		if (FUNC11(msgbuf->drvr->bus_if->dev,
					     msgbuf->tx_pktids, skb, ETH_HLEN,
					     &physaddr, &pktid)) {
			FUNC10(flow, flowid, skb);
			FUNC1(drvr, "No PKTID available !!\n");
			break;
		}
		ret_ptr = FUNC3(commonring);
		if (!ret_ptr) {
			FUNC12(msgbuf->drvr->bus_if->dev,
					       msgbuf->tx_pktids, pktid);
			FUNC10(flow, flowid, skb);
			break;
		}
		count++;

		tx_msghdr = (struct msgbuf_tx_msghdr *)ret_ptr;

		tx_msghdr->msg.msgtype = MSGBUF_TYPE_TX_POST;
		tx_msghdr->msg.request_id = FUNC14(pktid + 1);
		tx_msghdr->msg.ifidx = FUNC8(flow, flowid);
		tx_msghdr->flags = BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_3;
		tx_msghdr->flags |= (skb->priority & 0x07) <<
				    BRCMF_MSGBUF_PKT_FLAGS_PRIO_SHIFT;
		tx_msghdr->seg_cnt = 1;
		FUNC15(tx_msghdr->txhdr, skb->data, ETH_HLEN);
		tx_msghdr->data_len = FUNC13(skb->len - ETH_HLEN);
		address = (u64)physaddr;
		tx_msghdr->data_buf_addr.high_addr = FUNC14(address >> 32);
		tx_msghdr->data_buf_addr.low_addr =
			FUNC14(address & 0xffffffff);
		tx_msghdr->metadata_buf_len = 0;
		tx_msghdr->metadata_buf_addr.high_addr = 0;
		tx_msghdr->metadata_buf_addr.low_addr = 0;
		FUNC0(&commonring->outstanding_tx);
		if (count >= BRCMF_MSGBUF_TX_FLUSH_CNT2) {
			FUNC6(commonring);
			count = 0;
		}
	}
	if (count)
		FUNC6(commonring);
	FUNC4(commonring);
}
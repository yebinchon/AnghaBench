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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {void* low_addr; void* high_addr; } ;
struct TYPE_5__ {void* request_id; int /*<<< orphan*/  msgtype; } ;
struct msgbuf_rx_ioctl_resp_or_event {TYPE_3__ host_buf_addr; int /*<<< orphan*/  host_buf_len; TYPE_2__ msg; } ;
struct brcmf_pub {TYPE_1__* bus_if; } ;
struct brcmf_msgbuf {int /*<<< orphan*/  rx_pktids; struct brcmf_pub* drvr; struct brcmf_commonring** commonrings; } ;
struct brcmf_commonring {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t BRCMF_H2D_MSGRING_CONTROL_SUBMIT ; 
 int /*<<< orphan*/  BRCMF_MSGBUF_MAX_PKT_SIZE ; 
 int /*<<< orphan*/  MSGBUF_TYPE_EVENT_BUF_POST ; 
 int /*<<< orphan*/  MSGBUF_TYPE_IOCTLRESP_BUF_POST ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_commonring*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_commonring*) ; 
 void* FUNC3 (struct brcmf_commonring*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_commonring*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_commonring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_commonring*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct msgbuf_rx_ioctl_resp_or_event*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32
FUNC13(struct brcmf_msgbuf *msgbuf, bool event_buf,
			     u32 count)
{
	struct brcmf_pub *drvr = msgbuf->drvr;
	struct brcmf_commonring *commonring;
	void *ret_ptr;
	struct sk_buff *skb;
	u16 alloced;
	u32 pktlen;
	dma_addr_t physaddr;
	struct msgbuf_rx_ioctl_resp_or_event *rx_bufpost;
	u64 address;
	u32 pktid;
	u32 i;

	commonring = msgbuf->commonrings[BRCMF_H2D_MSGRING_CONTROL_SUBMIT];
	FUNC2(commonring);
	ret_ptr = FUNC3(commonring,
							      count,
							      &alloced);
	if (!ret_ptr) {
		FUNC0(drvr, "Failed to reserve space in commonring\n");
		FUNC4(commonring);
		return 0;
	}

	for (i = 0; i < alloced; i++) {
		rx_bufpost = (struct msgbuf_rx_ioctl_resp_or_event *)ret_ptr;
		FUNC12(rx_bufpost, 0, sizeof(*rx_bufpost));

		skb = FUNC8(BRCMF_MSGBUF_MAX_PKT_SIZE);

		if (skb == NULL) {
			FUNC0(drvr, "Failed to alloc SKB\n");
			FUNC5(commonring, alloced - i);
			break;
		}

		pktlen = skb->len;
		if (FUNC7(msgbuf->drvr->bus_if->dev,
					     msgbuf->rx_pktids, skb, 0,
					     &physaddr, &pktid)) {
			FUNC11(skb);
			FUNC0(drvr, "No PKTID available !!\n");
			FUNC5(commonring, alloced - i);
			break;
		}
		if (event_buf)
			rx_bufpost->msg.msgtype = MSGBUF_TYPE_EVENT_BUF_POST;
		else
			rx_bufpost->msg.msgtype =
				MSGBUF_TYPE_IOCTLRESP_BUF_POST;
		rx_bufpost->msg.request_id = FUNC10(pktid);

		address = (u64)physaddr;
		rx_bufpost->host_buf_len = FUNC9((u16)pktlen);
		rx_bufpost->host_buf_addr.high_addr =
			FUNC10(address >> 32);
		rx_bufpost->host_buf_addr.low_addr =
			FUNC10(address & 0xffffffff);

		ret_ptr += FUNC1(commonring);
	}

	if (i)
		FUNC6(commonring);

	FUNC4(commonring);

	return i;
}
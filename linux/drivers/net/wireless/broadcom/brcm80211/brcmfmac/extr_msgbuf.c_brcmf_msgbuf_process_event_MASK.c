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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifidx; int /*<<< orphan*/  request_id; } ;
struct msgbuf_rx_event {TYPE_2__ msg; int /*<<< orphan*/  event_data_len; } ;
struct brcmf_pub {TYPE_1__* bus_if; } ;
struct brcmf_msgbuf {struct brcmf_pub* drvr; scalar_t__ rx_dataoffset; int /*<<< orphan*/  rx_pktids; scalar_t__ cur_eventbuf; } ;
struct brcmf_if {int /*<<< orphan*/  drvr; int /*<<< orphan*/  ndev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC2 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_msgbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct brcmf_msgbuf *msgbuf, void *buf)
{
	struct brcmf_pub *drvr = msgbuf->drvr;
	struct msgbuf_rx_event *event;
	u32 idx;
	u16 buflen;
	struct sk_buff *skb;
	struct brcmf_if *ifp;

	event = (struct msgbuf_rx_event *)buf;
	idx = FUNC8(event->msg.request_id);
	buflen = FUNC7(event->event_data_len);

	if (msgbuf->cur_eventbuf)
		msgbuf->cur_eventbuf--;
	FUNC4(msgbuf);

	skb = FUNC3(msgbuf->drvr->bus_if->dev,
				     msgbuf->rx_pktids, idx);
	if (!skb)
		return;

	if (msgbuf->rx_dataoffset)
		FUNC9(skb, msgbuf->rx_dataoffset);

	FUNC10(skb, buflen);

	ifp = FUNC2(msgbuf->drvr, event->msg.ifidx);
	if (!ifp || !ifp->ndev) {
		FUNC0(drvr, "Received pkt for invalid ifidx %d\n",
			 event->msg.ifidx);
		goto exit;
	}

	skb->protocol = FUNC6(skb, ifp->ndev);

	FUNC1(ifp->drvr, skb, 0);

exit:
	FUNC5(skb);
}
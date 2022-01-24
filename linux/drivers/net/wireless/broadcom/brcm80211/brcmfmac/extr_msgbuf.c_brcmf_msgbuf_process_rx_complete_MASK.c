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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifidx; int /*<<< orphan*/  request_id; } ;
struct msgbuf_rx_complete {TYPE_2__ msg; int /*<<< orphan*/  flags; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data_offset; } ;
struct brcmf_pub {struct brcmf_if* mon_if; TYPE_1__* bus_if; } ;
struct brcmf_msgbuf {int rx_dataoffset; struct brcmf_pub* drvr; int /*<<< orphan*/  rx_pktids; } ;
struct brcmf_if {int /*<<< orphan*/  ndev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_11 ; 
 int BRCMF_MSGBUF_PKT_FLAGS_FRAME_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,...) ; 
 struct brcmf_if* FUNC1 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_msgbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_if*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_if*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC12(struct brcmf_msgbuf *msgbuf, void *buf)
{
	struct brcmf_pub *drvr = msgbuf->drvr;
	struct msgbuf_rx_complete *rx_complete;
	struct sk_buff *skb;
	u16 data_offset;
	u16 buflen;
	u16 flags;
	u32 idx;
	struct brcmf_if *ifp;

	FUNC3(msgbuf, 1);

	rx_complete = (struct msgbuf_rx_complete *)buf;
	data_offset = FUNC8(rx_complete->data_offset);
	buflen = FUNC8(rx_complete->data_len);
	idx = FUNC9(rx_complete->msg.request_id);
	flags = FUNC8(rx_complete->flags);

	skb = FUNC2(msgbuf->drvr->bus_if->dev,
				     msgbuf->rx_pktids, idx);
	if (!skb)
		return;

	if (data_offset)
		FUNC10(skb, data_offset);
	else if (msgbuf->rx_dataoffset)
		FUNC10(skb, msgbuf->rx_dataoffset);

	FUNC11(skb, buflen);

	if ((flags & BRCMF_MSGBUF_PKT_FLAGS_FRAME_MASK) ==
	    BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_11) {
		ifp = msgbuf->drvr->mon_if;

		if (!ifp) {
			FUNC0(drvr, "Received unexpected monitor pkt\n");
			FUNC6(skb);
			return;
		}

		FUNC4(ifp, skb);
		return;
	}

	ifp = FUNC1(msgbuf->drvr, rx_complete->msg.ifidx);
	if (!ifp || !ifp->ndev) {
		FUNC0(drvr, "Received pkt for invalid ifidx %d\n",
			 rx_complete->msg.ifidx);
		FUNC6(skb);
		return;
	}

	skb->protocol = FUNC7(skb, ifp->ndev);
	FUNC5(ifp, skb);
}
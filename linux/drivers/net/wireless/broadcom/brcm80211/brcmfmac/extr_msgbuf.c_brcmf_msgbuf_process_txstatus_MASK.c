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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifidx; int /*<<< orphan*/  request_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  flow_ring_id; } ;
struct msgbuf_tx_status {TYPE_3__ msg; TYPE_1__ compl_hdr; } ;
struct brcmf_msgbuf {TYPE_4__* drvr; struct brcmf_commonring** flowrings; int /*<<< orphan*/  txstatus_done_map; int /*<<< orphan*/  tx_pktids; } ;
struct brcmf_commonring {int /*<<< orphan*/  outstanding_tx; } ;
struct TYPE_8__ {TYPE_2__* bus_if; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BRCMF_H2D_MSGRING_FLOWRING_IDSTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct brcmf_msgbuf *msgbuf, void *buf)
{
	struct brcmf_commonring *commonring;
	struct msgbuf_tx_status *tx_status;
	u32 idx;
	struct sk_buff *skb;
	u16 flowid;

	tx_status = (struct msgbuf_tx_status *)buf;
	idx = FUNC5(tx_status->msg.request_id) - 1;
	flowid = FUNC4(tx_status->compl_hdr.flow_ring_id);
	flowid -= BRCMF_H2D_MSGRING_FLOWRING_IDSTART;
	skb = FUNC2(msgbuf->drvr->bus_if->dev,
				     msgbuf->tx_pktids, idx);
	if (!skb)
		return;

	FUNC6(flowid, msgbuf->txstatus_done_map);
	commonring = msgbuf->flowrings[flowid];
	FUNC0(&commonring->outstanding_tx);

	FUNC3(FUNC1(msgbuf->drvr, tx_status->msg.ifidx),
			 skb, true);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tx_desc {int dummy; } ;
struct sk_buff {unsigned int priority; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {size_t pidx; int /*<<< orphan*/ * desc; } ;
struct sge_ctrl_txq {int full; TYPE_5__ sendq; TYPE_1__ q; int /*<<< orphan*/  adap; } ;
struct fw_wr_hdr {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int NET_XMIT_CN ; 
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 scalar_t__ TXQ_STOP_THRES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sge_ctrl_txq*,struct fw_wr_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_1__*,struct fw_wr_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct sge_ctrl_txq *q, struct sk_buff *skb)
{
	unsigned int ndesc;
	struct fw_wr_hdr *wr;

	if (FUNC13(!FUNC7(skb))) {
		FUNC1(1);
		FUNC6(skb);
		return NET_XMIT_DROP;
	}

	ndesc = FUNC0(skb->len, sizeof(struct tx_desc));
	FUNC9(&q->sendq.lock);

	if (FUNC13(q->full)) {
		skb->priority = ndesc;                  /* save for restart */
		FUNC2(&q->sendq, skb);
		FUNC10(&q->sendq.lock);
		return NET_XMIT_CN;
	}

	wr = (struct fw_wr_hdr *)&q->q.desc[q->q.pidx];
	FUNC4(skb, &q->q, wr);

	FUNC11(&q->q, ndesc);
	if (FUNC13(FUNC12(&q->q) < TXQ_STOP_THRES))
		FUNC3(q, wr);

	FUNC5(q->adap, &q->q, ndesc);
	FUNC10(&q->sendq.lock);

	FUNC8(skb);
	return NET_XMIT_SUCCESS;
}
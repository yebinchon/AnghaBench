#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct work_request_hdr {int /*<<< orphan*/  wr_lo; int /*<<< orphan*/  wr_hi; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct sge_txq {size_t pidx; int gen; size_t size; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  in_use; int /*<<< orphan*/ * desc; int /*<<< orphan*/  token; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int F_SELEGRCNTX ; 
 int F_WR_EOP ; 
 int F_WR_SOP ; 
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  TXQ_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct adapter*,struct sge_txq*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct adapter *adap, struct sge_txq *q,
		     struct sk_buff *skb)
{
	int ret;
	struct work_request_hdr *wrp = (struct work_request_hdr *)skb->data;

	if (FUNC11(!FUNC6(skb))) {
		FUNC2(1);
		FUNC4(skb);
		return NET_XMIT_SUCCESS;
	}

	wrp->wr_hi |= FUNC5(F_WR_SOP | F_WR_EOP);
	wrp->wr_lo = FUNC5(FUNC1(q->token));

	FUNC8(&q->lock);
      again:FUNC7(q);

	ret = FUNC3(adap, q, skb, 1, TXQ_CTRL);
	if (FUNC11(ret)) {
		if (ret == 1) {
			FUNC9(&q->lock);
			return NET_XMIT_CN;
		}
		goto again;
	}

	FUNC13(&q->desc[q->pidx], skb, skb->len, q->gen);

	q->in_use++;
	if (++q->pidx >= q->size) {
		q->pidx = 0;
		q->gen ^= 1;
	}
	FUNC9(&q->lock);
	FUNC12();
	FUNC10(adap, A_SG_KDOORBELL,
		     F_SELEGRCNTX | FUNC0(q->cntxt_id));
	return NET_XMIT_SUCCESS;
}
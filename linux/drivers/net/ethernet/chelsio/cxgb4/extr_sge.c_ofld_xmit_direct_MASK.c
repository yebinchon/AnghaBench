#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {size_t pidx; int /*<<< orphan*/ * desc; } ;
struct sge_uld_txq {TYPE_3__ sendq; TYPE_1__ q; int /*<<< orphan*/  adap; scalar_t__ service_ofldq_running; scalar_t__ full; } ;
struct fw_wr_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 unsigned int MAX_IMM_OFLD_TX_DATA_WR_LEN ; 
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 int TXQ_STOP_THRES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const*,TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sge_uld_txq*,struct fw_wr_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sge_uld_txq *q, const void *src,
			    unsigned int len)
{
	unsigned int ndesc;
	int credits;
	u64 *pos;

	/* Use the lower limit as the cut-off */
	if (len > MAX_IMM_OFLD_TX_DATA_WR_LEN) {
		FUNC1(1);
		return NET_XMIT_DROP;
	}

	/* Don't return NET_XMIT_CN here as the current
	 * implementation doesn't queue the request
	 * using an skb when the following conditions not met
	 */
	if (!FUNC7(&q->sendq.lock))
		return NET_XMIT_DROP;

	if (q->full || !FUNC6(&q->sendq) ||
	    q->service_ofldq_running) {
		FUNC8(&q->sendq.lock);
		return NET_XMIT_DROP;
	}
	ndesc = FUNC3(FUNC0(len, 8));
	credits = FUNC10(&q->q) - ndesc;
	pos = (u64 *)&q->q.desc[q->q.pidx];

	/* ofldtxq_stop modifies WR header in-situ */
	FUNC4(src, &q->q, pos, len);
	if (FUNC11(credits < TXQ_STOP_THRES))
		FUNC5(q, (struct fw_wr_hdr *)pos);
	FUNC9(&q->q, ndesc);
	FUNC2(q->adap, &q->q, ndesc);

	FUNC8(&q->sendq.lock);
	return NET_XMIT_SUCCESS;
}
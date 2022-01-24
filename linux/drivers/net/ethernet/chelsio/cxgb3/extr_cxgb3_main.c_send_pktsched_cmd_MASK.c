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
struct sk_buff {int dummy; } ;
struct mngt_pktsched_wr {int sched; int idx; int min; int max; int binding; int /*<<< orphan*/  mngt_opcode; int /*<<< orphan*/  wr_hi; } ;
struct cpl_set_tcb_field {int dummy; } ;
struct adapter {struct sk_buff* nofail_skb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FW_MNGTOPCODE_PKTSCHED_SET ; 
 int /*<<< orphan*/  FW_WROPCODE_MNGT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mngt_pktsched_wr* FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct adapter*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct adapter *adap, int sched, int qidx, int lo,
			      int hi, int port)
{
	struct sk_buff *skb;
	struct mngt_pktsched_wr *req;
	int ret;

	skb = FUNC1(sizeof(*req), GFP_KERNEL);
	if (!skb)
		skb = adap->nofail_skb;
	if (!skb)
		return -ENOMEM;

	req = FUNC3(skb, sizeof(*req));
	req->wr_hi = FUNC2(FUNC0(FW_WROPCODE_MNGT));
	req->mngt_opcode = FW_MNGTOPCODE_PKTSCHED_SET;
	req->sched = sched;
	req->idx = qidx;
	req->min = lo;
	req->max = hi;
	req->binding = port;
	ret = FUNC4(adap, skb);
	if (skb == adap->nofail_skb) {
		adap->nofail_skb = FUNC1(sizeof(struct cpl_set_tcb_field),
					     GFP_KERNEL);
		if (!adap->nofail_skb)
			ret = -ENOMEM;
	}

	return ret;
}
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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int iport; } ;
struct TYPE_8__ {TYPE_3__ val; } ;
struct filter_entry {TYPE_4__ fs; } ;
struct cpl_set_tcb_field {void* val; void* mask; void* word_cookie; void* reply_ctrl; } ;
struct TYPE_5__ {int /*<<< orphan*/  abs_id; } ;
struct TYPE_6__ {TYPE_1__ fw_evtq; } ;
struct adapter {TYPE_2__ sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_CONTROL ; 
 int /*<<< orphan*/  CPL_SET_TCB_FIELD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_set_tcb_field*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC7 (int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct adapter *adap, struct filter_entry *f,
			 unsigned int ftid,  u16 word, u64 mask, u64 val,
			 int no_reply)
{
	struct cpl_set_tcb_field *req;
	struct sk_buff *skb;

	skb = FUNC7(sizeof(struct cpl_set_tcb_field), GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	req = (struct cpl_set_tcb_field *)FUNC6(skb, sizeof(*req));
	FUNC0(req, CPL_SET_TCB_FIELD, ftid);
	req->reply_ctrl = FUNC9(FUNC3(0) |
				FUNC2(adap->sge.fw_evtq.abs_id) |
				FUNC1(no_reply));
	req->word_cookie = FUNC9(FUNC5(word) | FUNC4(ftid));
	req->mask = FUNC8(mask);
	req->val = FUNC8(val);
	FUNC10(skb, CPL_PRIORITY_CONTROL, f->fs.val.iport & 0x3);
	FUNC11(adap, skb);
	return 0;
}
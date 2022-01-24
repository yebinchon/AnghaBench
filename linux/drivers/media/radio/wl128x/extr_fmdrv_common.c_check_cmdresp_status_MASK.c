#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct fmdev {TYPE_1__ irq_info; int /*<<< orphan*/  resp_skb_lock; struct sk_buff* resp_skb; } ;
struct fm_event_msg_hdr {scalar_t__ status; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 scalar_t__ FM_DRV_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC5(struct fmdev *fmdev,
		struct sk_buff **skb)
{
	struct fm_event_msg_hdr *fm_evt_hdr;
	unsigned long flags;

	FUNC0(&fmdev->irq_info.timer);

	FUNC3(&fmdev->resp_skb_lock, flags);
	*skb = fmdev->resp_skb;
	fmdev->resp_skb = NULL;
	FUNC4(&fmdev->resp_skb_lock, flags);

	fm_evt_hdr = (void *)(*skb)->data;
	if (fm_evt_hdr->status != 0) {
		FUNC1("irq: opcode %x response status is not zero Initiating irq recovery process\n",
				fm_evt_hdr->op);

		FUNC2(&fmdev->irq_info.timer, jiffies + FM_DRV_TX_TIMEOUT);
		return -1;
	}

	return 0;
}
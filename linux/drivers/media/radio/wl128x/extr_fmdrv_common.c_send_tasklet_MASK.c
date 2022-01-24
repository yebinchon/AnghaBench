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
struct sk_buff {int dummy; } ;
struct fmdev {scalar_t__ last_tx_jiffies; int /*<<< orphan*/  tx_cnt; int /*<<< orphan*/ * resp_comp; int /*<<< orphan*/  pre_op; int /*<<< orphan*/  tx_q; } ;
struct TYPE_2__ {int /*<<< orphan*/ * completion; int /*<<< orphan*/  fm_op; } ;

/* Variables and functions */
 scalar_t__ FM_DRV_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct fmdev *fmdev;
	struct sk_buff *skb;
	int len;

	fmdev = (struct fmdev *)arg;

	if (!FUNC1(&fmdev->tx_cnt))
		return;

	/* Check, is there any timeout happened to last transmitted packet */
	if ((jiffies - fmdev->last_tx_jiffies) > FM_DRV_TX_TIMEOUT) {
		FUNC4("TX timeout occurred\n");
		FUNC2(&fmdev->tx_cnt, 1);
	}

	/* Send queued FM TX packets */
	skb = FUNC7(&fmdev->tx_q);
	if (!skb)
		return;

	FUNC0(&fmdev->tx_cnt);
	fmdev->pre_op = FUNC3(skb)->fm_op;

	if (fmdev->resp_comp != NULL)
		FUNC4("Response completion handler is not NULL\n");

	fmdev->resp_comp = FUNC3(skb)->completion;

	/* Write FM packet to ST driver */
	len = FUNC5(skb);
	if (len < 0) {
		FUNC6(skb);
		fmdev->resp_comp = NULL;
		FUNC4("TX tasklet failed to send skb(%p)\n", skb);
		FUNC2(&fmdev->tx_cnt, 1);
	} else {
		fmdev->last_tx_jiffies = jiffies;
	}
}
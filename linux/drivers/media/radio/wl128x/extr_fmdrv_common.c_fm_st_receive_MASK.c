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
struct sk_buff {scalar_t__* cb; } ;
struct fmdev {int /*<<< orphan*/  rx_task; int /*<<< orphan*/  rx_q; } ;

/* Variables and functions */
 long EFAULT ; 
 long EINVAL ; 
 scalar_t__ FM_PKT_LOGICAL_CHAN_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC5(void *arg, struct sk_buff *skb)
{
	struct fmdev *fmdev;

	fmdev = (struct fmdev *)arg;

	if (skb == NULL) {
		FUNC0("Invalid SKB received from ST\n");
		return -EFAULT;
	}

	if (skb->cb[0] != FM_PKT_LOGICAL_CHAN_NUMBER) {
		FUNC0("Received SKB (%p) is not FM Channel 8 pkt\n", skb);
		return -EINVAL;
	}

	FUNC1(FUNC2(skb, 1), &skb->cb[0], 1);
	FUNC3(&fmdev->rx_q, skb);
	FUNC4(&fmdev->rx_task);

	return 0;
}
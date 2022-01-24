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
struct tap_queue {int dummy; } ;
struct tap_dev {int /*<<< orphan*/ * taps; int /*<<< orphan*/  numvtaps; } ;
struct sk_buff {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct tap_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct tap_queue *FUNC7(struct tap_dev *tap,
				       struct sk_buff *skb)
{
	struct tap_queue *queue = NULL;
	/* Access to taps array is protected by rcu, but access to numvtaps
	 * isn't. Below we use it to lookup a queue, but treat it as a hint
	 * and validate that the result isn't NULL - in case we are
	 * racing against queue removal.
	 */
	int numvtaps = FUNC0(tap->numvtaps);
	__u32 rxq;

	if (!numvtaps)
		goto out;

	if (numvtaps == 1)
		goto single;

	/* Check if we can use flow to select a queue */
	rxq = FUNC3(skb);
	if (rxq) {
		queue = FUNC2(tap->taps[rxq % numvtaps]);
		goto out;
	}

	if (FUNC1(FUNC5(skb))) {
		rxq = FUNC4(skb);

		while (FUNC6(rxq >= numvtaps))
			rxq -= numvtaps;

		queue = FUNC2(tap->taps[rxq]);
		goto out;
	}

single:
	queue = FUNC2(tap->taps[0]);
out:
	return queue;
}
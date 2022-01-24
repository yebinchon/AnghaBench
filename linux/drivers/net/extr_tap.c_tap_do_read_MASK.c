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
struct tap_queue {int /*<<< orphan*/  sk; int /*<<< orphan*/  ring; } ;
struct sk_buff {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tap_queue*,struct sk_buff*,struct iov_iter*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC12(struct tap_queue *q,
			   struct iov_iter *to,
			   int noblock, struct sk_buff *skb)
{
	FUNC0(wait);
	ssize_t ret = 0;

	if (!FUNC3(to)) {
		FUNC4(skb);
		return 0;
	}

	if (skb)
		goto put;

	while (1) {
		if (!noblock)
			FUNC5(FUNC9(&q->sk), &wait,
					TASK_INTERRUPTIBLE);

		/* Read frames from the queue */
		skb = FUNC6(&q->ring);
		if (skb)
			break;
		if (noblock) {
			ret = -EAGAIN;
			break;
		}
		if (FUNC8(current)) {
			ret = -ERESTARTSYS;
			break;
		}
		/* Nothing to read, let's sleep */
		FUNC7();
	}
	if (!noblock)
		FUNC2(FUNC9(&q->sk), &wait);

put:
	if (skb) {
		ret = FUNC10(q, skb, to);
		if (FUNC11(ret < 0))
			FUNC4(skb);
		else
			FUNC1(skb);
	}
	return ret;
}
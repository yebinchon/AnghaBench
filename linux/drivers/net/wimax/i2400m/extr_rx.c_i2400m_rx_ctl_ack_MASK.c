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
struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct i2400m {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  msg_completion; struct sk_buff* ack_skb; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sk_buff* FUNC9 (struct wimax_dev*,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC10(struct i2400m *i2400m,
		       const void *payload, size_t size)
{
	struct device *dev = FUNC5(i2400m);
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	unsigned long flags;
	struct sk_buff *ack_skb;

	/* Anyone waiting for an answer? */
	FUNC7(&i2400m->rx_lock, flags);
	if (i2400m->ack_skb != FUNC0(-EINPROGRESS)) {
		FUNC4(dev, "Huh? reply to command with no waiters\n");
		goto error_no_waiter;
	}
	FUNC8(&i2400m->rx_lock, flags);

	ack_skb = FUNC9(wimax_dev, NULL, payload, size, GFP_KERNEL);

	/* Check waiter didn't time out waiting for the answer... */
	FUNC7(&i2400m->rx_lock, flags);
	if (i2400m->ack_skb != FUNC0(-EINPROGRESS)) {
		FUNC3(1, dev, "Huh? waiter for command reply cancelled\n");
		goto error_waiter_cancelled;
	}
	if (FUNC1(ack_skb))
		FUNC4(dev, "CMD/GET/SET ack: cannot allocate SKB\n");
	i2400m->ack_skb = ack_skb;
	FUNC8(&i2400m->rx_lock, flags);
	FUNC2(&i2400m->msg_completion);
	return;

error_waiter_cancelled:
	if (!FUNC1(ack_skb))
		FUNC6(ack_skb);
error_no_waiter:
	FUNC8(&i2400m->rx_lock, flags);
}
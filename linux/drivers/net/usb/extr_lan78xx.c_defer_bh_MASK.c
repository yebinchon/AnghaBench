#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skb_data {int state; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct lan78xx_net {TYPE_1__ done; int /*<<< orphan*/  bh; } ;
typedef  enum skb_state { ____Placeholder_skb_state } skb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff_head*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum skb_state FUNC8(struct lan78xx_net *dev, struct sk_buff *skb,
			       struct sk_buff_head *list, enum skb_state state)
{
	unsigned long flags;
	enum skb_state old_state;
	struct skb_data *entry = (struct skb_data *)skb->cb;

	FUNC4(&list->lock, flags);
	old_state = entry->state;
	entry->state = state;

	FUNC1(skb, list);
	FUNC5(&list->lock);
	FUNC3(&dev->done.lock);

	FUNC0(&dev->done, skb);
	if (FUNC2(&dev->done) == 1)
		FUNC7(&dev->bh);
	FUNC6(&dev->done.lock, flags);

	return old_state;
}
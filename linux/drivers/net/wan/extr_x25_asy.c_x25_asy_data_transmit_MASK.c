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
struct x25_asy {int /*<<< orphan*/  lock; int /*<<< orphan*/ * tty; int /*<<< orphan*/  dev; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct x25_asy* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct x25_asy*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct x25_asy*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev, struct sk_buff *skb)
{
	struct x25_asy *sl = FUNC3(dev);

	FUNC5(&sl->lock);
	if (FUNC4(sl->dev) || sl->tty == NULL) {
		FUNC6(&sl->lock);
		FUNC2(dev, "tbusy drop\n");
		FUNC1(skb);
		return;
	}
	/* We were not busy, so we are now... :-) */
	if (skb != NULL) {
		FUNC8(sl);
		dev->stats.tx_bytes += skb->len;
		FUNC7(sl, skb->data, skb->len);
		FUNC0(skb);
	}
	FUNC6(&sl->lock);
}
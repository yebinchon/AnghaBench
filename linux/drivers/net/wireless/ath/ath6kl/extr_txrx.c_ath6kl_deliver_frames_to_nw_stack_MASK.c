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
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
					      struct sk_buff *skb)
{
	if (!skb)
		return;

	skb->dev = dev;

	if (!(skb->dev->flags & IFF_UP)) {
		FUNC0(skb);
		return;
	}

	skb->protocol = FUNC1(skb, skb->dev);

	FUNC2(skb);
}
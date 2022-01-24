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
struct sk_buff {unsigned char* data; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 unsigned char X25_IFACE_DATA ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct sk_buff *skb)
{
	unsigned char *ptr;

	FUNC2(skb, 1);

	if (FUNC1(skb, 1))
		return NET_RX_DROP;

	ptr  = skb->data;
	*ptr = X25_IFACE_DATA;

	skb->protocol = FUNC3(skb, dev);
	return FUNC0(skb);
}
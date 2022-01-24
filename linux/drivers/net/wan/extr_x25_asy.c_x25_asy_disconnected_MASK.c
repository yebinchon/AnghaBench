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
struct x25_asy {int /*<<< orphan*/  dev; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned char X25_IFACE_DISCONNECT ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct x25_asy* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 unsigned char* FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int reason)
{
	struct x25_asy *sl = FUNC2(dev);
	struct sk_buff *skb;
	unsigned char *ptr;

	skb = FUNC0(1);
	if (skb == NULL) {
		FUNC1(dev, "out of memory\n");
		return;
	}

	ptr  = FUNC4(skb, 1);
	*ptr = X25_IFACE_DISCONNECT;

	skb->protocol = FUNC5(skb, sl->dev);
	FUNC3(skb);
}
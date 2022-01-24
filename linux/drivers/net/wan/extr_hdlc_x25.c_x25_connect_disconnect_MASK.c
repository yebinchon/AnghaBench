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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned char* FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, int reason, int code)
{
	struct sk_buff *skb;
	unsigned char *ptr;

	if ((skb = FUNC0(1)) == NULL) {
		FUNC1(dev, "out of memory\n");
		return;
	}

	ptr = FUNC3(skb, 1);
	*ptr = code;

	skb->protocol = FUNC4(skb, dev);
	FUNC2(skb);
}
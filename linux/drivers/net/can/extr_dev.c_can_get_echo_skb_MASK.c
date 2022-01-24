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
typedef  unsigned int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct net_device*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

unsigned int FUNC2(struct net_device *dev, unsigned int idx)
{
	struct sk_buff *skb;
	u8 len;

	skb = FUNC0(dev, idx, &len);
	if (!skb)
		return 0;

	FUNC1(skb);

	return len;
}
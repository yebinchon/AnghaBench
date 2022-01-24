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
struct sk_buff {int /*<<< orphan*/  tstamp; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct can_frame*,struct can_frame const*,int) ; 
 int FUNC2 (struct sk_buff*) ; 

int FUNC3(struct net_device *netdev, const struct can_frame *msg,
		ktime_t ktime)
{
	struct sk_buff *skb;
	struct can_frame *cf;

	skb = FUNC0(netdev, &cf);
	if (!skb)
		return -ENOMEM;
	FUNC1(cf, msg, sizeof(*msg));
	skb->tstamp = ktime;
	return FUNC2(skb);
}
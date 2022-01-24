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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int* data; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct net_device *net, int can_id, int data1)
{
	struct sk_buff *skb;
	struct can_frame *frame;

	skb = FUNC0(net, &frame);
	if (skb) {
		frame->can_id |= can_id;
		frame->data[1] = data1;
		FUNC2(skb);
	} else {
		FUNC1(net, "cannot allocate error skb\n");
	}
}
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
struct usbnet {int /*<<< orphan*/  net; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct usbnet *dev)
{
	FUNC4(skb); /* ethernet header */

	if (FUNC3(skb)) {
		FUNC1(dev->net, "Non linear buffer-dropping\n");
		return 0;
	}

	if (!FUNC2(skb, ETH_HLEN))
		return 0;
	skb->protocol = FUNC0(skb)->h_proto;

	return 1;
}
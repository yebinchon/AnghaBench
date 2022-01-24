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
struct sk_buff {TYPE_1__* dev; } ;
struct rmnet_port {int data_format; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int RMNET_FLAGS_INGRESS_DEAGGREGATION ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct rmnet_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,struct rmnet_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct sk_buff *skb,
			  struct rmnet_port *port)
{
	struct sk_buff *skbn;

	if (skb->dev->type == ARPHRD_ETHER) {
		if (FUNC3(skb, ETH_HLEN, 0, GFP_ATOMIC)) {
			FUNC2(skb);
			return;
		}

		FUNC5(skb, ETH_HLEN);
	}

	if (port->data_format & RMNET_FLAGS_INGRESS_DEAGGREGATION) {
		while ((skbn = FUNC4(skb, port)) != NULL)
			FUNC0(skbn, port);

		FUNC1(skb);
	} else {
		FUNC0(skb, port);
	}
}
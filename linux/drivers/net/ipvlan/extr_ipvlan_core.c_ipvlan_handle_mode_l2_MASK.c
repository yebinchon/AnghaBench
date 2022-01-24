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
struct ipvl_port {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RX_HANDLER_PASS ; 
 struct ethhdr* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff**,struct ipvl_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipvl_port*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rx_handler_result_t FUNC7(struct sk_buff **pskb,
						 struct ipvl_port *port)
{
	struct sk_buff *skb = *pskb;
	struct ethhdr *eth = FUNC0(skb);
	rx_handler_result_t ret = RX_HANDLER_PASS;

	if (FUNC5(eth->h_dest)) {
		if (FUNC1(skb, port)) {
			struct sk_buff *nskb = FUNC6(skb, GFP_ATOMIC);

			/* External frames are queued for device local
			 * distribution, but a copy is given to master
			 * straight away to avoid sending duplicates later
			 * when work-queue processes this frame. This is
			 * achieved by returning RX_HANDLER_PASS.
			 */
			if (nskb) {
				FUNC4(nskb, NULL);
				FUNC3(port, nskb, false);
			}
		}
	} else {
		/* Perform like l3 mode for non-multicast packet */
		ret = FUNC2(pskb, port);
	}

	return ret;
}
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
struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;
struct TYPE_2__ {unsigned char* h_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_SLOW ; 
 int /*<<< orphan*/  RX_HANDLER_ANOTHER ; 
 int /*<<< orphan*/  RX_HANDLER_EXACT ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static rx_handler_result_t FUNC4(struct team *team, struct team_port *port,
				      struct sk_buff *skb)
{
	if (FUNC3(skb->protocol == FUNC1(ETH_P_SLOW))) {
		/* LACPDU packets should go to exact delivery */
		const unsigned char *dest = FUNC0(skb)->h_dest;

		if (FUNC2(dest) && dest[5] == 0x02)
			return RX_HANDLER_EXACT;
	}
	return RX_HANDLER_ANOTHER;
}
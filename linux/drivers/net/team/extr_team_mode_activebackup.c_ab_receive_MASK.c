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
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;
struct TYPE_2__ {int /*<<< orphan*/  active_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_HANDLER_ANOTHER ; 
 int /*<<< orphan*/  RX_HANDLER_EXACT ; 
 TYPE_1__* FUNC0 (struct team*) ; 
 struct team_port* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rx_handler_result_t FUNC2(struct team *team, struct team_port *port,
				      struct sk_buff *skb) {
	struct team_port *active_port;

	active_port = FUNC1(FUNC0(team)->active_port);
	if (active_port != port)
		return RX_HANDLER_EXACT;
	return RX_HANDLER_ANOTHER;
}
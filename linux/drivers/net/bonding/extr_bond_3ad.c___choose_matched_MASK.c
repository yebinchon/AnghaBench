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
struct port {scalar_t__ actor_port_number; scalar_t__ actor_port_priority; scalar_t__ actor_system_priority; scalar_t__ actor_oper_port_key; int actor_oper_port_state; int /*<<< orphan*/  sm_vars; int /*<<< orphan*/  actor_system; } ;
struct lacpdu {int partner_state; int actor_state; int /*<<< orphan*/  partner_key; int /*<<< orphan*/  partner_system_priority; int /*<<< orphan*/  partner_system; int /*<<< orphan*/  partner_port_priority; int /*<<< orphan*/  partner_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_PORT_MATCHED ; 
 int AD_STATE_AGGREGATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct lacpdu *lacpdu, struct port *port)
{
	/* check if all parameters are alike
	 * or this is individual link(aggregation == FALSE)
	 * then update the state machine Matched variable.
	 */
	if (((FUNC1(lacpdu->partner_port) == port->actor_port_number) &&
	     (FUNC1(lacpdu->partner_port_priority) == port->actor_port_priority) &&
	     FUNC0(&(lacpdu->partner_system), &(port->actor_system)) &&
	     (FUNC1(lacpdu->partner_system_priority) == port->actor_system_priority) &&
	     (FUNC1(lacpdu->partner_key) == port->actor_oper_port_key) &&
	     ((lacpdu->partner_state & AD_STATE_AGGREGATION) == (port->actor_oper_port_state & AD_STATE_AGGREGATION))) ||
	    ((lacpdu->actor_state & AD_STATE_AGGREGATION) == 0)
		) {
		port->sm_vars |= AD_PORT_MATCHED;
	} else {
		port->sm_vars &= ~AD_PORT_MATCHED;
	}
}
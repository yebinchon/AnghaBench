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
struct port_params {int dummy; } ;
struct port {int /*<<< orphan*/  actor_oper_port_state; int /*<<< orphan*/  partner_admin; int /*<<< orphan*/  partner_oper; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_STATE_DEFAULTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct port *port)
{
	if (port) {
		/* record the partner admin parameters */
		FUNC0(&port->partner_oper, &port->partner_admin,
		       sizeof(struct port_params));

		/* set actor_oper_port_state.defaulted to true */
		port->actor_oper_port_state |= AD_STATE_DEFAULTED;
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct port {int sm_tx_timer_counter; int ntt; int sm_vars; int /*<<< orphan*/  actor_port_number; TYPE_2__* slave; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__* bond; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AD_MAX_TX_IN_SECOND ; 
 int AD_PORT_LACP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 scalar_t__ FUNC1 (struct port*) ; 
 int ad_ticks_per_sec ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct port *port)
{
	/* check if tx timer expired, to verify that we do not send more than
	 * 3 packets per second
	 */
	if (port->sm_tx_timer_counter && !(--port->sm_tx_timer_counter)) {
		/* check if there is something to send */
		if (port->ntt && (port->sm_vars & AD_PORT_LACP_ENABLED)) {
			FUNC0(port);

			if (FUNC1(port) >= 0) {
				FUNC2(port->slave->bond->dev,
					  port->slave->dev,
					  "Sent LACPDU on port %d\n",
					  port->actor_port_number);

				/* mark ntt as false, so it will not be sent
				 * again until demanded
				 */
				port->ntt = false;
			}
		}
		/* restart tx timer(to verify that we will not exceed
		 * AD_MAX_TX_IN_SECOND
		 */
		port->sm_tx_timer_counter = ad_ticks_per_sec/AD_MAX_TX_IN_SECOND;
	}
}
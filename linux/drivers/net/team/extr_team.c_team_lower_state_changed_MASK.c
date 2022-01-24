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
struct team_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  linkup; } ;
struct netdev_lag_lower_state_info {int /*<<< orphan*/  tx_enabled; int /*<<< orphan*/  link_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct netdev_lag_lower_state_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct team_port*) ; 

__attribute__((used)) static void FUNC2(struct team_port *port)
{
	struct netdev_lag_lower_state_info info;

	info.link_up = port->linkup;
	info.tx_enabled = FUNC1(port);
	FUNC0(port->dev, &info);
}
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
struct net_device {int dummy; } ;
struct ehea_port {int /*<<< orphan*/  flags; int /*<<< orphan*/  port_lock; int /*<<< orphan*/  stats_work; int /*<<< orphan*/  reset_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  __EHEA_DISABLE_PORT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ehea_port* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ehea_port*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	int ret;
	struct ehea_port *port = FUNC6(dev);

	FUNC7(port, ifdown, dev, "disabling port\n");

	FUNC10(__EHEA_DISABLE_PORT_RESET, &port->flags);
	FUNC1(&port->reset_task);
	FUNC0(&port->stats_work);
	FUNC4(&port->port_lock);
	FUNC8(dev);
	FUNC9(port);
	ret = FUNC3(dev);
	FUNC5(&port->port_lock);
	FUNC2(__EHEA_DISABLE_PORT_RESET, &port->flags);
	return ret;
}
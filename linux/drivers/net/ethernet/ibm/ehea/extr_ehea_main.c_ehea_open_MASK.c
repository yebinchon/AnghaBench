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
struct ehea_port {int /*<<< orphan*/  stats_work; int /*<<< orphan*/  port_lock; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ehea_port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehea_port*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	int ret;
	struct ehea_port *port = FUNC4(dev);

	FUNC2(&port->port_lock);

	FUNC6(port, ifup, dev, "enabling port\n");

	FUNC5(dev);

	ret = FUNC0(dev);
	if (!ret) {
		FUNC8(port);
		FUNC7(dev);
	}

	FUNC3(&port->port_lock);
	FUNC10(&port->stats_work,
			      FUNC9(FUNC1(1000)));

	return ret;
}
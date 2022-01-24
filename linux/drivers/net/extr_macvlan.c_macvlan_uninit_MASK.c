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
struct macvlan_port {int /*<<< orphan*/  dev; scalar_t__ count; } ;
struct macvlan_dev {int /*<<< orphan*/  pcpu_stats; struct macvlan_port* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct macvlan_port*,struct macvlan_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC3(dev);
	struct macvlan_port *port = vlan->port;

	FUNC0(vlan->pcpu_stats);

	FUNC1(port, vlan);
	port->count -= 1;
	if (!port->count)
		FUNC2(port->dev);
}
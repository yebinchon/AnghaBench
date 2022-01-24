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
struct ipvl_port {int /*<<< orphan*/  dev; scalar_t__ count; } ;
struct ipvl_dev {int /*<<< orphan*/  pcpu_stats; struct net_device* phy_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ipvl_port* FUNC2 (struct net_device*) ; 
 struct ipvl_dev* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ipvl_dev *ipvlan = FUNC3(dev);
	struct net_device *phy_dev = ipvlan->phy_dev;
	struct ipvl_port *port;

	FUNC0(ipvlan->pcpu_stats);

	port = FUNC2(phy_dev);
	port->count -= 1;
	if (!port->count)
		FUNC1(port->dev);
}
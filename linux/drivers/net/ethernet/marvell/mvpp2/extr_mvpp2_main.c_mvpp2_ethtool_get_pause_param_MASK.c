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
struct mvpp2_port {int /*<<< orphan*/  phylink; } ;
struct ethtool_pauseparam {int dummy; } ;

/* Variables and functions */
 struct mvpp2_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ethtool_pauseparam*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
					  struct ethtool_pauseparam *pause)
{
	struct mvpp2_port *port = FUNC0(dev);

	if (!port->phylink)
		return;

	FUNC1(port->phylink, pause);
}
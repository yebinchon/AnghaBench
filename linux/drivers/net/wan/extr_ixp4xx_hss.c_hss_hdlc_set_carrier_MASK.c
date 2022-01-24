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
struct port {int carrier; int /*<<< orphan*/  loopback; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  npe_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(void *pdev, int carrier)
{
	struct net_device *netdev = pdev;
	struct port *port = FUNC0(netdev);
	unsigned long flags;

	FUNC3(&npe_lock, flags);
	port->carrier = carrier;
	if (!port->loopback) {
		if (carrier)
			FUNC2(netdev);
		else
			FUNC1(netdev);
	}
	FUNC4(&npe_lock, flags);
}
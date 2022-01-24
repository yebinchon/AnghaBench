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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  phydev; } ;
struct gemini_ethernet_port {int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_coalesce_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gemini_ethernet_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct gemini_ethernet_port* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC9(netdev);

	FUNC7(&port->rx_coalesce_timer);
	FUNC10(netdev);
	FUNC3(netdev);
	FUNC5(port);
	FUNC8(&port->napi);

	FUNC4(netdev, 0);
	FUNC1(netdev);
	FUNC2(netdev);

	FUNC11(netdev->phydev);
	FUNC0(netdev->irq, netdev);

	FUNC6(netdev);
	return 0;
}
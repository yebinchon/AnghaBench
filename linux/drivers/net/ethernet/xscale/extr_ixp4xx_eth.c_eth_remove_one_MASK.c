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
struct port {int /*<<< orphan*/  mem_res; int /*<<< orphan*/  npe; int /*<<< orphan*/  id; } ;
struct platform_device {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/ ** npe_port_tab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *dev = FUNC5(pdev);
	struct phy_device *phydev = dev->phydev;
	struct port *port = FUNC2(dev);

	FUNC7(dev);
	FUNC4(phydev);
	npe_port_tab[FUNC0(port->id)] = NULL;
	FUNC3(port->npe);
	FUNC6(port->mem_res);
	FUNC1(dev);
	return 0;
}
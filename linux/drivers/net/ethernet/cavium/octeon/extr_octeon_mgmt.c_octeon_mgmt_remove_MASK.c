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
struct platform_device {int dummy; } ;
struct octeon_mgmt {int /*<<< orphan*/  phy_np; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct octeon_mgmt* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct net_device *netdev = FUNC3(pdev);
	struct octeon_mgmt *p = FUNC1(netdev);

	FUNC4(netdev);
	FUNC2(p->phy_np);
	FUNC0(netdev);
	return 0;
}
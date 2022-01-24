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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int flags; } ;
struct emac_adapter {int dummy; } ;

/* Variables and functions */
 int IFF_UP ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*) ; 
 struct emac_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev)
{
	struct net_device *netdev = FUNC0(&pdev->dev);
	struct emac_adapter *adpt = FUNC3(netdev);

	if (netdev->flags & IFF_UP) {
		/* Closing the SGMII turns off its interrupts */
		FUNC2(adpt);

		/* Resetting the MAC turns off all DMA and its interrupts */
		FUNC1(adpt);
	}
}
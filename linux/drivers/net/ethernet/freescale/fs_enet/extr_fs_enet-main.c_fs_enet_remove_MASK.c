#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct net_device {int dummy; } ;
struct fs_enet_private {TYPE_1__* fpi; int /*<<< orphan*/  dev; TYPE_3__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* cleanup_data ) (struct net_device*) ;int /*<<< orphan*/  (* free_bd ) (struct net_device*) ;} ;
struct TYPE_4__ {scalar_t__ clk_per; int /*<<< orphan*/  phy_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct fs_enet_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *ofdev)
{
	struct net_device *ndev = FUNC7(ofdev);
	struct fs_enet_private *fep = FUNC3(ndev);

	FUNC10(ndev);

	fep->ops->free_bd(ndev);
	fep->ops->cleanup_data(ndev);
	FUNC1(fep->dev, NULL);
	FUNC4(fep->fpi->phy_node);
	if (fep->fpi->clk_per)
		FUNC0(fep->fpi->clk_per);
	if (FUNC6(ofdev->dev.of_node))
		FUNC5(ofdev->dev.of_node);
	FUNC2(ndev);
	return 0;
}
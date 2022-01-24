#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pxa168_eth_private {int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  smi_bus; scalar_t__ clk; int /*<<< orphan*/ * htpr; int /*<<< orphan*/  htpr_dma; TYPE_1__* dev; } ;
struct platform_device {int dummy; } ;
struct net_device {scalar_t__ phydev; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ADDR_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct pxa168_eth_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct net_device* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct net_device *dev = FUNC8(pdev);
	struct pxa168_eth_private *pep = FUNC6(dev);

	if (pep->htpr) {
		FUNC2(pep->dev->dev.parent, HASH_ADDR_TABLE_SIZE,
				  pep->htpr, pep->htpr_dma);
		pep->htpr = NULL;
	}
	if (dev->phydev)
		FUNC7(dev->phydev);
	if (pep->clk) {
		FUNC1(pep->clk);
	}

	FUNC5(pep->smi_bus);
	FUNC4(pep->smi_bus);
	FUNC9(dev);
	FUNC0(&pep->tx_timeout_task);
	FUNC3(dev);
	return 0;
}
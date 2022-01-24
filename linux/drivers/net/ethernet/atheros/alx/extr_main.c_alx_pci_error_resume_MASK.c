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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct alx_priv {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct alx_priv* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct alx_priv *alx = FUNC4(pdev);
	struct net_device *netdev = alx->dev;

	FUNC1(&pdev->dev, "pci error resume\n");

	FUNC5();

	if (FUNC3(netdev)) {
		FUNC0(alx);
		FUNC2(netdev);
	}

	FUNC6();
}
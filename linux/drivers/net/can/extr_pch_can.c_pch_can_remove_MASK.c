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
struct pci_dev {int dummy; } ;
struct pch_can_priv {int /*<<< orphan*/  ndev; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev; scalar_t__ use_msi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pch_can_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_can_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *ndev = FUNC5(pdev);
	struct pch_can_priv *priv = FUNC1(ndev);

	FUNC8(priv->ndev);
	if (priv->use_msi)
		FUNC4(priv->dev);
	FUNC7(pdev);
	FUNC3(pdev);
	FUNC2(priv);
	FUNC6(pdev, priv->regs);
	FUNC0(priv->ndev);
}
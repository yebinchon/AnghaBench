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
struct sc92031_priv {int /*<<< orphan*/  lock; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct sc92031_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC7(pdev);
	struct sc92031_priv *priv = FUNC1(dev);

	FUNC8(pdev);
	FUNC9(pdev, PCI_D0);

	if (!FUNC4(dev))
		goto out;

	/* Interrupts already disabled by sc92031_suspend */
	FUNC11(&priv->lock);

	FUNC0(dev);

	FUNC12(&priv->lock);
	FUNC10(dev);

	FUNC3(dev);

	if (FUNC2(dev))
		FUNC6(dev);
	else
		FUNC5(dev);

out:
	return 0;
}
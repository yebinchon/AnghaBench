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
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct sc92031_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *dev = FUNC6(pdev);
	struct sc92031_priv *priv = FUNC2(dev);

	FUNC7(pdev);

	if (!FUNC4(dev))
		goto out;

	FUNC3(dev);

	/* Disable interrupts, stop Tx and Rx. */
	FUNC9(dev);

	FUNC10(&priv->lock);

	FUNC0(dev);
	FUNC1(dev);

	FUNC11(&priv->lock);

out:
	FUNC8(pdev, FUNC5(pdev, state));

	return 0;
}
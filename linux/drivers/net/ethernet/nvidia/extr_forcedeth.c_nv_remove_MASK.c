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
struct net_device {int dummy; } ;
struct fe_priv {int /*<<< orphan*/  txrx_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 struct net_device* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pci_dev)
{
	struct net_device *dev = FUNC10(pci_dev);
	struct fe_priv *np = FUNC5(dev);

	FUNC1(np->txrx_stats);

	FUNC12(dev);

	FUNC7(pci_dev);

	/* restore any phy related changes */
	FUNC8(dev);

	FUNC6(dev);

	/* free all structures */
	FUNC2(dev);
	FUNC4(FUNC3(dev));
	FUNC11(pci_dev);
	FUNC9(pci_dev);
	FUNC0(dev);
}
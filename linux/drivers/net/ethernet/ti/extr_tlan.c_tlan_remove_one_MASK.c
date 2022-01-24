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
struct tlan_priv {int /*<<< orphan*/  tlan_tqueue; int /*<<< orphan*/  dma_storage_dma; scalar_t__ dma_storage; int /*<<< orphan*/  dma_size; int /*<<< orphan*/  pci_dev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct tlan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct tlan_priv	*priv = FUNC2(dev);

	FUNC6(dev);

	if (priv->dma_storage) {
		FUNC3(priv->pci_dev,
				    priv->dma_size, priv->dma_storage,
				    priv->dma_storage_dma);
	}

#ifdef CONFIG_PCI
	pci_release_regions(pdev);
#endif

	FUNC1(dev);

	FUNC0(&priv->tlan_tqueue);
}
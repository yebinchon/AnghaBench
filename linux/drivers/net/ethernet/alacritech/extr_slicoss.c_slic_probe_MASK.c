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
struct slic_device {int /*<<< orphan*/  regs; int /*<<< orphan*/  napi; struct net_device* netdev; struct pci_dev* pdev; int /*<<< orphan*/  is_fiber; int /*<<< orphan*/  model; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  dev; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  irq; } ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  hw_features; int /*<<< orphan*/  features; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NETIF_F_RXCSUM ; 
 scalar_t__ PCI_DEVICE_ID_ALACRITECH_OASIS ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SLIC_MODEL_MOJAVE ; 
 int /*<<< orphan*/  SLIC_MODEL_OASIS ; 
 int /*<<< orphan*/  SLIC_NAPI_WEIGHT ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct slic_device* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  slic_ethtool_ops ; 
 int FUNC23 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slic_netdev_ops ; 
 int /*<<< orphan*/  slic_poll ; 

__attribute__((used)) static int FUNC25(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct slic_device *sdev;
	struct net_device *dev;
	int err;

	err = FUNC13(pdev);
	if (err) {
		FUNC3(&pdev->dev, "failed to enable PCI device\n");
		return err;
	}

	FUNC19(pdev);
	FUNC20(pdev);

	FUNC22(pdev);

	err = FUNC5(&pdev->dev, FUNC0(32));
	if (err) {
		FUNC3(&pdev->dev, "failed to setup DMA\n");
		goto disable;
	}

	FUNC4(&pdev->dev, FUNC0(32));

	err = FUNC15(pdev, DRV_NAME);
	if (err) {
		FUNC3(&pdev->dev, "failed to obtain PCI regions\n");
		goto disable;
	}

	dev = FUNC2(sizeof(*sdev));
	if (!dev) {
		FUNC3(&pdev->dev, "failed to alloc ethernet device\n");
		err = -ENOMEM;
		goto free_regions;
	}

	FUNC1(dev, &pdev->dev);
	FUNC18(pdev, dev);
	dev->irq = pdev->irq;
	dev->netdev_ops = &slic_netdev_ops;
	dev->hw_features = NETIF_F_RXCSUM;
	dev->features |= dev->hw_features;

	dev->ethtool_ops = &slic_ethtool_ops;

	sdev = FUNC9(dev);
	sdev->model = (pdev->device == PCI_DEVICE_ID_ALACRITECH_OASIS) ?
		      SLIC_MODEL_OASIS : SLIC_MODEL_MOJAVE;
	sdev->is_fiber = FUNC24(pdev->subsystem_device);
	sdev->pdev = pdev;
	sdev->netdev = dev;
	sdev->regs = FUNC7(FUNC17(pdev, 0),
				     FUNC16(pdev, 0));
	if (!sdev->regs) {
		FUNC3(&pdev->dev, "failed to map registers\n");
		err = -ENOMEM;
		goto free_netdev;
	}

	err = FUNC23(sdev);
	if (err) {
		FUNC3(&pdev->dev, "failed to initialize driver\n");
		goto unmap;
	}

	FUNC11(dev, &sdev->napi, slic_poll, SLIC_NAPI_WEIGHT);
	FUNC10(dev);

	err = FUNC21(dev);
	if (err) {
		FUNC3(&pdev->dev, "failed to register net device: %i\n", err);
		goto unmap;
	}

	return 0;

unmap:
	FUNC8(sdev->regs);
free_netdev:
	FUNC6(dev);
free_regions:
	FUNC14(pdev);
disable:
	FUNC12(pdev);

	return err;
}
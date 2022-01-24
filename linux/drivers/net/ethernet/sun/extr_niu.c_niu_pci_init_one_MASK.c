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
struct TYPE_3__ {int /*<<< orphan*/  device; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; } ;
union niu_parent_id {TYPE_1__ pci; } ;
typedef  int /*<<< orphan*/  u64 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  devfn; TYPE_2__* bus; } ;
struct niu {int /*<<< orphan*/ * regs; int /*<<< orphan*/  parent; } ;
struct net_device {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  irq; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  features; } ;
typedef  int /*<<< orphan*/  parent_id ;
struct TYPE_4__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  NETIF_F_HIGHDMA ; 
 int /*<<< orphan*/  NIU_MAX_MTU ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_CERE ; 
 int PCI_EXP_DEVCTL_FERE ; 
 int PCI_EXP_DEVCTL_NFERE ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_NOSNOOP_EN ; 
 int PCI_EXP_DEVCTL_RELAX_EN ; 
 int PCI_EXP_DEVCTL_URRE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAT_TYPE_ATLAS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (union niu_parent_id*,int /*<<< orphan*/ ,int) ; 
 struct niu* FUNC7 (struct net_device*) ; 
 struct net_device* FUNC8 (int /*<<< orphan*/ *,struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct niu*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct niu*) ; 
 int /*<<< orphan*/  FUNC13 (struct niu*,union niu_parent_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  niu_pci_ops ; 
 int /*<<< orphan*/  FUNC14 (struct niu*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/ * FUNC19 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int FUNC25 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC30 (struct net_device*) ; 

__attribute__((used)) static int FUNC31(struct pci_dev *pdev,
			    const struct pci_device_id *ent)
{
	union niu_parent_id parent_id;
	struct net_device *dev;
	struct niu *np;
	int err;
	u64 dma_mask;

	FUNC11();

	err = FUNC18(pdev);
	if (err) {
		FUNC3(&pdev->dev, "Cannot enable PCI device, aborting\n");
		return err;
	}

	if (!(FUNC23(pdev, 0) & IORESOURCE_MEM) ||
	    !(FUNC23(pdev, 2) & IORESOURCE_MEM)) {
		FUNC3(&pdev->dev, "Cannot find proper PCI device base addresses, aborting\n");
		err = -ENODEV;
		goto err_out_disable_pdev;
	}

	err = FUNC22(pdev, DRV_MODULE_NAME);
	if (err) {
		FUNC3(&pdev->dev, "Cannot obtain PCI resources, aborting\n");
		goto err_out_disable_pdev;
	}

	if (!FUNC20(pdev)) {
		FUNC3(&pdev->dev, "Cannot find PCI Express capability, aborting\n");
		err = -ENODEV;
		goto err_out_free_res;
	}

	dev = FUNC8(&pdev->dev, pdev, NULL,
				 &niu_pci_ops, FUNC1(pdev->devfn));
	if (!dev) {
		err = -ENOMEM;
		goto err_out_free_res;
	}
	np = FUNC7(dev);

	FUNC6(&parent_id, 0, sizeof(parent_id));
	parent_id.pci.domain = FUNC17(pdev->bus);
	parent_id.pci.bus = pdev->bus->number;
	parent_id.pci.device = FUNC2(pdev->devfn);

	np->parent = FUNC13(np, &parent_id,
				    PLAT_TYPE_ATLAS);
	if (!np->parent) {
		err = -ENOMEM;
		goto err_out_free_dev;
	}

	FUNC29(pdev, PCI_EXP_DEVCTL,
		PCI_EXP_DEVCTL_NOSNOOP_EN,
		PCI_EXP_DEVCTL_CERE | PCI_EXP_DEVCTL_NFERE |
		PCI_EXP_DEVCTL_FERE | PCI_EXP_DEVCTL_URRE |
		PCI_EXP_DEVCTL_RELAX_EN);

	dma_mask = FUNC0(44);
	err = FUNC26(pdev, dma_mask);
	if (!err) {
		dev->features |= NETIF_F_HIGHDMA;
		err = FUNC25(pdev, dma_mask);
		if (err) {
			FUNC3(&pdev->dev, "Unable to obtain 44 bit DMA for consistent allocations, aborting\n");
			goto err_out_release_parent;
		}
	}
	if (err) {
		err = FUNC26(pdev, FUNC0(32));
		if (err) {
			FUNC3(&pdev->dev, "No usable DMA configuration, aborting\n");
			goto err_out_release_parent;
		}
	}

	FUNC15(dev);

	dev->priv_flags |= IFF_UNICAST_FLT;

	np->regs = FUNC19(pdev, 0);
	if (!np->regs) {
		FUNC3(&pdev->dev, "Cannot map device registers, aborting\n");
		err = -ENOMEM;
		goto err_out_release_parent;
	}

	FUNC28(pdev);
	FUNC24(pdev);

	dev->irq = pdev->irq;

	/* MTU range: 68 - 9216 */
	dev->min_mtu = ETH_MIN_MTU;
	dev->max_mtu = NIU_MAX_MTU;

	FUNC9(dev);

	err = FUNC12(np);
	if (err) {
		if (err != -ENODEV)
			FUNC3(&pdev->dev, "Problem fetching invariants of chip, aborting\n");
		goto err_out_iounmap;
	}

	err = FUNC30(dev);
	if (err) {
		FUNC3(&pdev->dev, "Cannot register net device, aborting\n");
		goto err_out_iounmap;
	}

	FUNC27(pdev, dev);

	FUNC10(np);

	return 0;

err_out_iounmap:
	if (np->regs) {
		FUNC5(np->regs);
		np->regs = NULL;
	}

err_out_release_parent:
	FUNC14(np);

err_out_free_dev:
	FUNC4(dev);

err_out_free_res:
	FUNC21(pdev);

err_out_disable_pdev:
	FUNC16(pdev);

	return err;
}
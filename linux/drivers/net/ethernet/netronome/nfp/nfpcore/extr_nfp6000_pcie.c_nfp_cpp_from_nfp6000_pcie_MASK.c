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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct nfp_cpp {int dummy; } ;
struct nfp6000_pcie {int /*<<< orphan*/  bar_lock; int /*<<< orphan*/  bar_waiters; struct pci_dev* pdev; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct nfp_cpp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NFP_CPP_INTERFACE_CHANNEL_PEROPENER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFP_CPP_INTERFACE_TYPE_PCI ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (struct nfp6000_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp6000_pcie*) ; 
 struct nfp6000_pcie* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfp6000_pcie_ops ; 
 struct nfp_cpp* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nfp6000_pcie*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct nfp_cpp *FUNC13(struct pci_dev *pdev)
{
	struct nfp6000_pcie *nfp;
	u16 interface;
	int err;

	/*  Finished with card initialization. */
	FUNC4(&pdev->dev,
		 "Netronome Flow Processor NFP4000/NFP5000/NFP6000 PCIe Card Probe\n");
	FUNC11(pdev);

	nfp = FUNC8(sizeof(*nfp), GFP_KERNEL);
	if (!nfp) {
		err = -ENOMEM;
		goto err_ret;
	}

	nfp->dev = &pdev->dev;
	nfp->pdev = pdev;
	FUNC6(&nfp->bar_waiters);
	FUNC12(&nfp->bar_lock);

	interface = FUNC9(&pdev->dev);

	if (FUNC2(interface) !=
	    NFP_CPP_INTERFACE_TYPE_PCI) {
		FUNC3(&pdev->dev,
			"Interface type %d is not the expected %d\n",
			FUNC2(interface),
			NFP_CPP_INTERFACE_TYPE_PCI);
		err = -ENODEV;
		goto err_free_nfp;
	}

	if (FUNC1(interface) !=
	    NFP_CPP_INTERFACE_CHANNEL_PEROPENER) {
		FUNC3(&pdev->dev, "Interface channel %d is not the expected %d\n",
			FUNC1(interface),
			NFP_CPP_INTERFACE_CHANNEL_PEROPENER);
		err = -ENODEV;
		goto err_free_nfp;
	}

	err = FUNC5(nfp, interface);
	if (err)
		goto err_free_nfp;

	/* Probe for all the common NFP devices */
	return FUNC10(&nfp6000_pcie_ops, &pdev->dev, nfp);

err_free_nfp:
	FUNC7(nfp);
err_ret:
	FUNC3(&pdev->dev, "NFP6000 PCI setup failed\n");
	return FUNC0(err);
}
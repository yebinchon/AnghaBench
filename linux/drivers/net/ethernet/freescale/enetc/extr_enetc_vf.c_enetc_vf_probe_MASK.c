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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct enetc_si {int /*<<< orphan*/ * ndev; } ;
struct enetc_ndev_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_MAX_NUM_TXQS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct net_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct enetc_ndev_priv*) ; 
 int FUNC3 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  enetc_drv_name ; 
 int /*<<< orphan*/  enetc_drv_ver ; 
 int /*<<< orphan*/  FUNC4 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC7 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  enetc_ndev_ops ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct enetc_si*,struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 struct enetc_ndev_priv* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct enetc_ndev_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enetc_si* FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC16 (struct net_device*) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev,
			  const struct pci_device_id *ent)
{
	struct enetc_ndev_priv *priv;
	struct net_device *ndev;
	struct enetc_si *si;
	int err;

	err = FUNC8(pdev, KBUILD_MODNAME, 0);
	if (err) {
		FUNC1(&pdev->dev, "PCI probing failed\n");
		return err;
	}

	si = FUNC15(pdev);

	FUNC6(si);

	ndev = FUNC0(sizeof(*priv), ENETC_MAX_NUM_TXQS);
	if (!ndev) {
		err = -ENOMEM;
		FUNC1(&pdev->dev, "netdev creation failed\n");
		goto err_alloc_netdev;
	}

	FUNC10(si, ndev, &enetc_ndev_ops);

	priv = FUNC12(ndev);

	FUNC7(priv);

	err = FUNC3(priv);
	if (err) {
		FUNC1(&pdev->dev, "SI resource alloc failed\n");
		goto err_alloc_si_res;
	}

	err = FUNC2(priv);
	if (err) {
		FUNC1(&pdev->dev, "MSIX alloc failed\n");
		goto err_alloc_msix;
	}

	err = FUNC16(ndev);
	if (err)
		goto err_reg_netdev;

	FUNC13(ndev);

	FUNC14(priv, probe, ndev, "%s v%s\n",
		   enetc_drv_name, enetc_drv_ver);

	return 0;

err_reg_netdev:
	FUNC4(priv);
err_alloc_msix:
	FUNC5(priv);
err_alloc_si_res:
	si->ndev = NULL;
	FUNC11(ndev);
err_alloc_netdev:
	FUNC9(pdev);

	return err;
}
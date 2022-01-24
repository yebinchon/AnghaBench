#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  global; int /*<<< orphan*/  port; } ;
struct enetc_si {int /*<<< orphan*/ * ndev; TYPE_1__ hw; } ;
struct enetc_pf {int /*<<< orphan*/  total_vfs; struct enetc_si* si; } ;
struct enetc_ndev_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_MAX_NUM_TXQS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct net_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int FUNC4 (struct enetc_ndev_priv*) ; 
 int FUNC5 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct enetc_pf*) ; 
 int /*<<< orphan*/  enetc_drv_name ; 
 int /*<<< orphan*/  enetc_drv_ver ; 
 int /*<<< orphan*/  FUNC7 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC10 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  enetc_ndev_ops ; 
 int FUNC11 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct enetc_ndev_priv*) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct enetc_si*,struct net_device*,int /*<<< orphan*/ *) ; 
 struct enetc_pf* FUNC16 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 struct enetc_ndev_priv* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct enetc_ndev_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 struct enetc_si* FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC24 (struct net_device*) ; 

__attribute__((used)) static int FUNC25(struct pci_dev *pdev,
			  const struct pci_device_id *ent)
{
	struct enetc_ndev_priv *priv;
	struct net_device *ndev;
	struct enetc_si *si;
	struct enetc_pf *pf;
	int err;

	if (pdev->dev.of_node && !FUNC21(pdev->dev.of_node)) {
		FUNC2(&pdev->dev, "device is disabled, skipping\n");
		return -ENODEV;
	}

	err = FUNC13(pdev, KBUILD_MODNAME, sizeof(*pf));
	if (err) {
		FUNC1(&pdev->dev, "PCI probing failed\n");
		return err;
	}

	si = FUNC22(pdev);
	if (!si->hw.port || !si->hw.global) {
		err = -ENODEV;
		FUNC1(&pdev->dev, "could not map PF space, probing a VF?\n");
		goto err_map_pf_space;
	}

	pf = FUNC16(si);
	pf->si = si;
	pf->total_vfs = FUNC23(pdev);

	FUNC6(pf);

	FUNC9(si);

	ndev = FUNC0(sizeof(*priv), ENETC_MAX_NUM_TXQS);
	if (!ndev) {
		err = -ENOMEM;
		FUNC1(&pdev->dev, "netdev creation failed\n");
		goto err_alloc_netdev;
	}

	FUNC15(si, ndev, &enetc_ndev_ops);

	priv = FUNC18(ndev);

	FUNC10(priv);

	err = FUNC5(priv);
	if (err) {
		FUNC1(&pdev->dev, "SI resource alloc failed\n");
		goto err_alloc_si_res;
	}

	err = FUNC4(priv);
	if (err) {
		FUNC1(&pdev->dev, "MSIX alloc failed\n");
		goto err_alloc_msix;
	}

	err = FUNC11(priv);
	if (err)
		FUNC3(&pdev->dev, "Fallback to PHY-less operation\n");

	err = FUNC24(ndev);
	if (err)
		goto err_reg_netdev;

	FUNC19(ndev);

	FUNC20(priv, probe, ndev, "%s v%s\n",
		   enetc_drv_name, enetc_drv_ver);

	return 0;

err_reg_netdev:
	FUNC12(priv);
	FUNC7(priv);
err_alloc_msix:
	FUNC8(priv);
err_alloc_si_res:
	si->ndev = NULL;
	FUNC17(ndev);
err_alloc_netdev:
err_map_pf_space:
	FUNC14(pdev);

	return err;
}
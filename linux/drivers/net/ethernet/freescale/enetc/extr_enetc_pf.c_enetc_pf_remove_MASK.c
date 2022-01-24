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
struct enetc_si {int /*<<< orphan*/  ndev; } ;
struct enetc_pf {scalar_t__ num_vfs; } ;
struct enetc_ndev_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  enetc_drv_name ; 
 int /*<<< orphan*/  enetc_drv_ver ; 
 int /*<<< orphan*/  FUNC0 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_pf*) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct enetc_pf* FUNC5 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct enetc_ndev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enetc_si* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct enetc_si *si = FUNC10(pdev);
	struct enetc_pf *pf = FUNC5(si);
	struct enetc_ndev_priv *priv;

	if (pf->num_vfs)
		FUNC6(pdev, 0);

	priv = FUNC8(si->ndev);
	FUNC9(priv, drv, si->ndev, "%s v%s remove\n",
		   enetc_drv_name, enetc_drv_ver);

	FUNC11(si->ndev);

	FUNC2(pf);
	FUNC3(priv);

	FUNC0(priv);

	FUNC1(priv);

	FUNC7(si->ndev);

	FUNC4(pdev);
}
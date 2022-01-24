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
struct enetc_ndev_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  enetc_drv_name ; 
 int /*<<< orphan*/  enetc_drv_ver ; 
 int /*<<< orphan*/  FUNC0 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_ndev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enetc_si* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct enetc_si *si = FUNC6(pdev);
	struct enetc_ndev_priv *priv;

	priv = FUNC4(si->ndev);
	FUNC5(priv, drv, si->ndev, "%s v%s remove\n",
		   enetc_drv_name, enetc_drv_ver);
	FUNC7(si->ndev);

	FUNC0(priv);

	FUNC1(priv);

	FUNC3(si->ndev);

	FUNC2(pdev);
}
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
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct alcor_pci_priv {int pdev_cap_off; int parent_cap_off; int pdev_aspm_cap; int parent_aspm_cap; int ext_config_dev_aspm; int /*<<< orphan*/  dev; struct pci_dev* parent_pdev; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ALCOR_PCIE_LINK_CAP_OFFSET ; 
 void* FUNC0 (struct alcor_pci_priv*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC3(struct alcor_pci_priv *priv)
{
	struct pci_dev *pci;
	int where;
	u32 val32;

	priv->pdev_cap_off    = FUNC0(priv, priv->pdev);
	priv->parent_cap_off = FUNC0(priv,
							 priv->parent_pdev);

	if ((priv->pdev_cap_off == 0) || (priv->parent_cap_off == 0)) {
		FUNC1(priv->dev, "pci_cap_off: %x, parent_cap_off: %x\n",
			priv->pdev_cap_off, priv->parent_cap_off);
		return;
	}

	/* link capability */
	pci   = priv->pdev;
	where = priv->pdev_cap_off + ALCOR_PCIE_LINK_CAP_OFFSET;
	FUNC2(pci, where, &val32);
	priv->pdev_aspm_cap = (u8)(val32 >> 10) & 0x03;

	pci   = priv->parent_pdev;
	where = priv->parent_cap_off + ALCOR_PCIE_LINK_CAP_OFFSET;
	FUNC2(pci, where, &val32);
	priv->parent_aspm_cap = (u8)(val32 >> 10) & 0x03;

	if (priv->pdev_aspm_cap != priv->parent_aspm_cap) {
		u8 aspm_cap;

		FUNC1(priv->dev, "pdev_aspm_cap: %x, parent_aspm_cap: %x\n",
			priv->pdev_aspm_cap, priv->parent_aspm_cap);
		aspm_cap = priv->pdev_aspm_cap & priv->parent_aspm_cap;
		priv->pdev_aspm_cap    = aspm_cap;
		priv->parent_aspm_cap = aspm_cap;
	}

	FUNC1(priv->dev, "ext_config_dev_aspm: %x, pdev_aspm_cap: %x\n",
		priv->ext_config_dev_aspm, priv->pdev_aspm_cap);
	priv->ext_config_dev_aspm &= priv->pdev_aspm_cap;
}
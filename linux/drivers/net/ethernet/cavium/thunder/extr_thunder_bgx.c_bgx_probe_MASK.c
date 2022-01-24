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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct bgx {int bgx_id; int max_lmac; int is_rgx; int is_dlm; scalar_t__ lmac_count; int /*<<< orphan*/  reg_base; struct pci_dev* pdev; } ;

/* Variables and functions */
 int BGX_ID_MASK ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_BGX_PER_CN81XX ; 
 int MAX_LMAC_PER_BGX ; 
 int /*<<< orphan*/  PCI_CFG_REG_BAR_NUM ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 scalar_t__ PCI_DEVICE_ID_THUNDER_RGX ; 
 int /*<<< orphan*/  PCI_SUBSYSTEM_ID ; 
 scalar_t__ PCI_SUBSYS_DEVID_81XX_BGX ; 
 scalar_t__ PCI_SUBSYS_DEVID_83XX_BGX ; 
 int /*<<< orphan*/  FUNC0 (struct bgx*) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*) ; 
 int FUNC2 (struct bgx*) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,scalar_t__) ; 
 int FUNC4 (struct bgx*,scalar_t__) ; 
 struct bgx** bgx_vnic ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct bgx* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int max_bgx_per_node ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct bgx*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err;
	struct device *dev = &pdev->dev;
	struct bgx *bgx = NULL;
	u8 lmac;
	u16 sdevid;

	bgx = FUNC6(dev, sizeof(*bgx), GFP_KERNEL);
	if (!bgx)
		return -ENOMEM;
	bgx->pdev = pdev;

	FUNC14(pdev, bgx);

	err = FUNC9(pdev);
	if (err) {
		FUNC5(dev, "Failed to enable PCI device\n");
		FUNC14(pdev, NULL);
		return err;
	}

	err = FUNC12(pdev, DRV_NAME);
	if (err) {
		FUNC5(dev, "PCI request regions failed 0x%x\n", err);
		goto err_disable_device;
	}

	/* MAP configuration registers */
	bgx->reg_base = FUNC15(pdev, PCI_CFG_REG_BAR_NUM, 0);
	if (!bgx->reg_base) {
		FUNC5(dev, "BGX: Cannot map CSR memory space, aborting\n");
		err = -ENOMEM;
		goto err_release_regions;
	}

	FUNC16(pdev);

	FUNC10(pdev, PCI_DEVICE_ID, &sdevid);
	if (sdevid != PCI_DEVICE_ID_THUNDER_RGX) {
		bgx->bgx_id = (FUNC13(pdev,
			PCI_CFG_REG_BAR_NUM) >> 24) & BGX_ID_MASK;
		bgx->bgx_id += FUNC7(pdev) * max_bgx_per_node;
		bgx->max_lmac = MAX_LMAC_PER_BGX;
		bgx_vnic[bgx->bgx_id] = bgx;
	} else {
		bgx->is_rgx = true;
		bgx->max_lmac = 1;
		bgx->bgx_id = MAX_BGX_PER_CN81XX - 1;
		bgx_vnic[bgx->bgx_id] = bgx;
		FUNC17();
	}

	/* On 81xx all are DLMs and on 83xx there are 3 BGX QLMs and one
	 * BGX i.e BGX2 can be split across 2 DLMs.
	 */
	FUNC10(pdev, PCI_SUBSYSTEM_ID, &sdevid);
	if ((sdevid == PCI_SUBSYS_DEVID_81XX_BGX) ||
	    ((sdevid == PCI_SUBSYS_DEVID_83XX_BGX) && (bgx->bgx_id == 2)))
		bgx->is_dlm = true;

	FUNC0(bgx);

	err = FUNC2(bgx);
	if (err)
		goto err_enable;

	FUNC1(bgx);

	/* Enable all LMACs */
	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
		err = FUNC4(bgx, lmac);
		if (err) {
			FUNC5(dev, "BGX%d failed to enable lmac%d\n",
				bgx->bgx_id, lmac);
			while (lmac)
				FUNC3(bgx, --lmac);
			goto err_enable;
		}
	}

	return 0;

err_enable:
	bgx_vnic[bgx->bgx_id] = NULL;
err_release_regions:
	FUNC11(pdev);
err_disable_device:
	FUNC8(pdev);
	FUNC14(pdev, NULL);
	return err;
}
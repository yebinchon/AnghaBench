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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 scalar_t__ OCXL_DVSEC_VENDOR_CFG_VERS ; 
 scalar_t__ OCXL_DVSEC_VENDOR_DLX_VERS ; 
 int /*<<< orphan*/  OCXL_DVSEC_VENDOR_ID ; 
 scalar_t__ OCXL_DVSEC_VENDOR_TLX_VERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev)
{
	int pos;
	u32 cfg, tlx, dlx;

	/*
	 * vendor specific DVSEC is optional
	 *
	 * It's currently only used on function 0 to specify the
	 * version of some logic blocks. Some older images may not
	 * even have it so we ignore any errors
	 */
	if (FUNC0(dev->devfn) != 0)
		return 0;

	pos = FUNC2(dev, OCXL_DVSEC_VENDOR_ID);
	if (!pos)
		return 0;

	FUNC3(dev, pos + OCXL_DVSEC_VENDOR_CFG_VERS, &cfg);
	FUNC3(dev, pos + OCXL_DVSEC_VENDOR_TLX_VERS, &tlx);
	FUNC3(dev, pos + OCXL_DVSEC_VENDOR_DLX_VERS, &dlx);

	FUNC1(&dev->dev, "Vendor specific DVSEC:\n");
	FUNC1(&dev->dev, "  CFG version = 0x%x\n", cfg);
	FUNC1(&dev->dev, "  TLX version = 0x%x\n", tlx);
	FUNC1(&dev->dev, "  DLX version = 0x%x\n", dlx);
	return 0;
}
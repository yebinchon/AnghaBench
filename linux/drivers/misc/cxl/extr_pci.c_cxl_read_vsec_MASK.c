#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cxl {int user_image_loaded; int perst_select_user; int perst_loads_image; int slices; int ps_size; int user_irqs; TYPE_1__* native; int /*<<< orphan*/  base_image; int /*<<< orphan*/  caia_minor; int /*<<< orphan*/  caia_major; int /*<<< orphan*/  psl_rev; int /*<<< orphan*/  vsec_status; } ;
struct TYPE_2__ {int ps_off; int afu_desc_off; int afu_desc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ CXL_VSEC_MIN_SIZE ; 
 int CXL_VSEC_PERST_LOADS_IMAGE ; 
 int CXL_VSEC_USER_IMAGE_LOADED ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC15(struct cxl *adapter, struct pci_dev *dev)
{
	int vsec;
	u32 afu_desc_off, afu_desc_size;
	u32 ps_off, ps_size;
	u16 vseclen;
	u8 image_state;

	if (!(vsec = FUNC13(dev))) {
		FUNC12(&dev->dev, "ABORTING: CXL VSEC not found!\n");
		return -ENODEV;
	}

	FUNC6(dev, vsec, &vseclen);
	if (vseclen < CXL_VSEC_MIN_SIZE) {
		FUNC12(&dev->dev, "ABORTING: CXL VSEC too short\n");
		return -EINVAL;
	}

	FUNC11(dev, vsec, &adapter->vsec_status);
	FUNC8(dev, vsec, &adapter->psl_rev);
	FUNC3(dev, vsec, &adapter->caia_major);
	FUNC4(dev, vsec, &adapter->caia_minor);
	FUNC2(dev, vsec, &adapter->base_image);
	FUNC5(dev, vsec, &image_state);
	adapter->user_image_loaded = !!(image_state & CXL_VSEC_USER_IMAGE_LOADED);
	adapter->perst_select_user = !!(image_state & CXL_VSEC_USER_IMAGE_LOADED);
	adapter->perst_loads_image = !!(image_state & CXL_VSEC_PERST_LOADS_IMAGE);

	FUNC7(dev, vsec, &adapter->slices);
	FUNC0(dev, vsec, &afu_desc_off);
	FUNC1(dev, vsec, &afu_desc_size);
	FUNC9(dev, vsec, &ps_off);
	FUNC10(dev, vsec, &ps_size);

	/* Convert everything to bytes, because there is NO WAY I'd look at the
	 * code a month later and forget what units these are in ;-) */
	adapter->native->ps_off = ps_off * 64 * 1024;
	adapter->ps_size = ps_size * 64 * 1024;
	adapter->native->afu_desc_off = afu_desc_off * 64 * 1024;
	adapter->native->afu_desc_size = afu_desc_size * 64 * 1024;

	/* Total IRQs - 1 PSL ERROR - #AFU*(1 slice error + 1 DSI) */
	adapter->user_irqs = FUNC14(dev) - 1 - 2*adapter->slices;

	return 0;
}
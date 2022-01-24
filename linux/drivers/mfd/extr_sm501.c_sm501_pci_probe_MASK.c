#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sm501_devdata {struct sm501_devdata* regs_claim; int /*<<< orphan*/  regs; TYPE_1__* io_res; TYPE_1__* mem_res; int /*<<< orphan*/  irq; TYPE_3__* dev; scalar_t__ pdev_id; int /*<<< orphan*/ * platdata; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * platform_data; } ;
struct pci_dev {TYPE_3__ dev; TYPE_1__* resource; int /*<<< orphan*/  irq; scalar_t__ devfn; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  SM501_FBPD_SWAP_FB_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sm501_devdata*) ; 
 struct sm501_devdata* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct sm501_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct sm501_devdata*) ; 
 struct sm501_devdata* FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_2__ sm501_fb_pdata ; 
 int /*<<< orphan*/  FUNC10 (struct sm501_devdata*) ; 
 int /*<<< orphan*/  sm501_pci_platdata ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev,
				     const struct pci_device_id *id)
{
	struct sm501_devdata *sm;
	int err;

	sm = FUNC2(sizeof(*sm), GFP_KERNEL);
	if (!sm) {
		err = -ENOMEM;
		goto err1;
	}

	/* set a default set of platform data */
	dev->dev.platform_data = sm->platdata = &sm501_pci_platdata;

	/* set a hopefully unique id for our child platform devices */
	sm->pdev_id = 32 + dev->devfn;

	FUNC7(dev, sm);

	err = FUNC4(dev);
	if (err) {
		FUNC0(&dev->dev, "cannot enable device\n");
		goto err2;
	}

	sm->dev = &dev->dev;
	sm->irq = dev->irq;

#ifdef __BIG_ENDIAN
	/* if the system is big-endian, we most probably have a
	 * translation in the IO layer making the PCI bus little endian
	 * so make the framebuffer swapped pixels */

	sm501_fb_pdata.flags |= SM501_FBPD_SWAP_FB_ENDIAN;
#endif

	/* check our resources */

	if (!(FUNC6(dev, 0) & IORESOURCE_MEM)) {
		FUNC0(&dev->dev, "region #0 is not memory?\n");
		err = -EINVAL;
		goto err3;
	}

	if (!(FUNC6(dev, 1) & IORESOURCE_MEM)) {
		FUNC0(&dev->dev, "region #1 is not memory?\n");
		err = -EINVAL;
		goto err3;
	}

	/* make our resources ready for sharing */

	sm->io_res = &dev->resource[1];
	sm->mem_res = &dev->resource[0];

	sm->regs_claim = FUNC9(sm->io_res->start,
					    0x100, "sm501");
	if (!sm->regs_claim) {
		FUNC0(&dev->dev, "cannot claim registers\n");
		err= -EBUSY;
		goto err3;
	}

	sm->regs = FUNC5(dev, 1);
	if (!sm->regs) {
		FUNC0(&dev->dev, "cannot remap registers\n");
		err = -EIO;
		goto err4;
	}

	FUNC10(sm);
	return 0;

 err4:
	FUNC8(sm->regs_claim);
	FUNC1(sm->regs_claim);
 err3:
	FUNC3(dev);
 err2:
	FUNC1(sm);
 err1:
	return err;
}
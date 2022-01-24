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
struct TYPE_2__ {scalar_t__ virt; } ;
struct vr_nor_mtd {scalar_t__ csr_base; TYPE_1__ map; int /*<<< orphan*/  info; struct pci_dev* dev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 scalar_t__ EXP_TIMING_CS0 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int TIMING_WR_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vr_nor_mtd*) ; 
 struct vr_nor_mtd* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct vr_nor_mtd*) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 int FUNC10 (struct vr_nor_mtd*) ; 
 int FUNC11 (struct vr_nor_mtd*) ; 
 int FUNC12 (struct vr_nor_mtd*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct vr_nor_mtd *p = NULL;
	unsigned int exp_timing_cs0;
	int err;

	err = FUNC5(dev);
	if (err)
		goto out;

	err = FUNC7(dev, DRV_NAME);
	if (err)
		goto disable_dev;

	p = FUNC2(sizeof(*p), GFP_KERNEL);
	err = -ENOMEM;
	if (!p)
		goto release;

	p->dev = dev;

	err = FUNC10(p);
	if (err)
		goto release;

	err = FUNC12(p);
	if (err)
		goto destroy_maps;

	err = FUNC11(p);
	if (err)
		goto destroy_mtd_setup;

	FUNC8(dev, p);

	return 0;

      destroy_mtd_setup:
	FUNC3(p->info);

      destroy_maps:
	/* write-protect the flash bank */
	exp_timing_cs0 = FUNC9(p->csr_base + EXP_TIMING_CS0);
	exp_timing_cs0 &= ~TIMING_WR_EN;
	FUNC13(exp_timing_cs0, p->csr_base + EXP_TIMING_CS0);

	/* unmap the flash window */
	FUNC0(p->map.virt);

	/* unmap the csr window */
	FUNC0(p->csr_base);

      release:
	FUNC1(p);
	FUNC6(dev);

      disable_dev:
	FUNC4(dev);

      out:
	return err;
}
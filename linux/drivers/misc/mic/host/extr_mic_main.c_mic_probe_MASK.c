#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  va; void* len; void* pa; } ;
struct TYPE_9__ {int /*<<< orphan*/  va; void* len; void* pa; } ;
struct mic_device {int id; TYPE_5__ mmio; TYPE_4__ aper; int /*<<< orphan*/  cosm_dev; TYPE_3__* pdev; TYPE_2__* intr_ops; TYPE_1__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* intr_init ) (struct mic_device*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  aper_bar; int /*<<< orphan*/  mmio_bar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIC_MAX_NUM_DEVS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cosm_hw_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  g_mic_ida ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mic_device*) ; 
 struct mic_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mic_device*,struct pci_dev*) ; 
 int FUNC15 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct mic_device*) ; 
 int /*<<< orphan*/  mic_driver_name ; 
 int /*<<< orphan*/  FUNC17 (struct mic_device*,struct pci_dev*) ; 
 int FUNC18 (struct mic_device*,struct pci_dev*) ; 
 int FUNC19 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int FUNC25 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,struct mic_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC31 (struct mic_device*) ; 

__attribute__((used)) static int FUNC32(struct pci_dev *pdev,
		     const struct pci_device_id *ent)
{
	int rc;
	struct mic_device *mdev;

	mdev = FUNC10(sizeof(*mdev), GFP_KERNEL);
	if (!mdev) {
		rc = -ENOMEM;
		FUNC4(&pdev->dev, "mdev kmalloc failed rc %d\n", rc);
		goto mdev_alloc_fail;
	}
	mdev->id = FUNC5(&g_mic_ida, 0, MIC_MAX_NUM_DEVS, GFP_KERNEL);
	if (mdev->id < 0) {
		rc = mdev->id;
		FUNC4(&pdev->dev, "ida_simple_get failed rc %d\n", rc);
		goto ida_fail;
	}

	FUNC14(mdev, pdev);

	rc = FUNC22(pdev);
	if (rc) {
		FUNC4(&pdev->dev, "failed to enable pci device.\n");
		goto ida_remove;
	}

	FUNC30(pdev);

	rc = FUNC25(pdev, mic_driver_name);
	if (rc) {
		FUNC4(&pdev->dev, "failed to get pci regions.\n");
		goto disable_device;
	}

	rc = FUNC28(pdev, FUNC0(64));
	if (rc) {
		FUNC4(&pdev->dev, "Cannot set DMA mask\n");
		goto release_regions;
	}

	mdev->mmio.pa = FUNC27(pdev, mdev->ops->mmio_bar);
	mdev->mmio.len = FUNC26(pdev, mdev->ops->mmio_bar);
	mdev->mmio.va = FUNC23(pdev, mdev->ops->mmio_bar);
	if (!mdev->mmio.va) {
		FUNC4(&pdev->dev, "Cannot remap MMIO BAR\n");
		rc = -EIO;
		goto release_regions;
	}

	mdev->aper.pa = FUNC27(pdev, mdev->ops->aper_bar);
	mdev->aper.len = FUNC26(pdev, mdev->ops->aper_bar);
	mdev->aper.va = FUNC7(mdev->aper.pa, mdev->aper.len);
	if (!mdev->aper.va) {
		FUNC4(&pdev->dev, "Cannot remap Aperture BAR\n");
		rc = -EIO;
		goto unmap_mmio;
	}

	mdev->intr_ops->intr_init(mdev);
	rc = FUNC18(mdev, pdev);
	if (rc) {
		FUNC4(&pdev->dev, "mic_setup_interrupts failed %d\n", rc);
		goto unmap_aper;
	}
	rc = FUNC19(mdev);
	if (rc) {
		FUNC4(&pdev->dev, "smpt_init failed %d\n", rc);
		goto free_interrupts;
	}

	FUNC29(pdev, mdev);

	rc = FUNC15(mdev);
	if (rc) {
		FUNC4(&pdev->dev, "mic_dp_init failed rc %d\n", rc);
		goto smpt_uninit;
	}
	FUNC11(mdev);
	FUNC12(mdev);

	mdev->cosm_dev = FUNC3(&mdev->pdev->dev, &cosm_hw_ops);
	if (FUNC1(mdev->cosm_dev)) {
		rc = FUNC2(mdev->cosm_dev);
		FUNC4(&pdev->dev, "cosm_add_device failed rc %d\n", rc);
		goto cleanup_debug_dir;
	}
	return 0;
cleanup_debug_dir:
	FUNC13(mdev);
	FUNC16(mdev);
smpt_uninit:
	FUNC20(mdev);
free_interrupts:
	FUNC17(mdev, pdev);
unmap_aper:
	FUNC8(mdev->aper.va);
unmap_mmio:
	FUNC8(mdev->mmio.va);
release_regions:
	FUNC24(pdev);
disable_device:
	FUNC21(pdev);
ida_remove:
	FUNC6(&g_mic_ida, mdev->id);
ida_fail:
	FUNC9(mdev);
mdev_alloc_fail:
	FUNC4(&pdev->dev, "Probe failed rc %d\n", rc);
	return rc;
}
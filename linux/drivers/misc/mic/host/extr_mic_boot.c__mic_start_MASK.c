#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  va; } ;
struct mic_device {int dp_dma_addr; int /*<<< orphan*/  dma_mbdev; int /*<<< orphan*/  scdev; int /*<<< orphan*/  vpdev; TYPE_3__* ops; TYPE_2__* intr_ops; int /*<<< orphan*/ * dma_ch; int /*<<< orphan*/  aper; TYPE_1__* pdev; int /*<<< orphan*/  num_dma_ch; int /*<<< orphan*/  dp; TYPE_4__ mmio; } ;
struct cosm_device {int dummy; } ;
struct TYPE_7__ {int (* load_mic_fw ) (struct mic_device*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* send_firmware_intr ) (struct mic_device*) ;int /*<<< orphan*/  (* write_spad ) (struct mic_device*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* enable_interrupts ) (struct mic_device*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBUS_DEV_DMA_HOST ; 
 int /*<<< orphan*/  MIC_DPHI_SPAD ; 
 int /*<<< orphan*/  MIC_DPLO_SPAD ; 
 int /*<<< orphan*/  MIC_SCIF_DEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOP_DEV_TRNSP ; 
 int /*<<< orphan*/  __mic_dma_ops ; 
 int /*<<< orphan*/  _mic_dma_ops ; 
 struct mic_device* FUNC2 (struct cosm_device*) ; 
 int /*<<< orphan*/  mbus_hw_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mic_device*) ; 
 int /*<<< orphan*/  mic_dma_ops ; 
 int /*<<< orphan*/  FUNC6 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mic_device*) ; 
 int /*<<< orphan*/  scif_hw_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mic_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mic_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mic_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mic_device*) ; 
 int /*<<< orphan*/  vop_hw_ops ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct cosm_device *cdev, int id)
{
	struct mic_device *mdev = FUNC2(cdev);
	int rc;

	FUNC5(mdev);
	mdev->dma_mbdev = FUNC3(&mdev->pdev->dev,
					       MBUS_DEV_DMA_HOST, &mic_dma_ops,
					       &mbus_hw_ops, id, mdev->mmio.va);
	if (FUNC0(mdev->dma_mbdev)) {
		rc = FUNC1(mdev->dma_mbdev);
		goto unlock_ret;
	}
	if (!FUNC8(mdev)) {
		rc = -ENODEV;
		goto dma_remove;
	}
	mdev->scdev = FUNC10(&mdev->pdev->dev, MIC_SCIF_DEV,
					   &__mic_dma_ops, &scif_hw_ops,
					   id + 1, 0, &mdev->mmio,
					   &mdev->aper, mdev->dp, NULL,
					   mdev->dma_ch, mdev->num_dma_ch,
					   true);
	if (FUNC0(mdev->scdev)) {
		rc = FUNC1(mdev->scdev);
		goto dma_free;
	}

	mdev->vpdev = FUNC17(&mdev->pdev->dev,
					  VOP_DEV_TRNSP, &_mic_dma_ops,
					  &vop_hw_ops, id + 1, &mdev->aper,
					  mdev->dma_ch[0]);
	if (FUNC0(mdev->vpdev)) {
		rc = FUNC1(mdev->vpdev);
		goto scif_remove;
	}

	rc = mdev->ops->load_mic_fw(mdev, NULL);
	if (rc)
		goto vop_remove;
	FUNC9(mdev);
	FUNC7(mdev);
	mdev->intr_ops->enable_interrupts(mdev);
	mdev->ops->write_spad(mdev, MIC_DPLO_SPAD, mdev->dp_dma_addr);
	mdev->ops->write_spad(mdev, MIC_DPHI_SPAD, mdev->dp_dma_addr >> 32);
	mdev->ops->send_firmware_intr(mdev);
	goto unlock_ret;
vop_remove:
	FUNC18(mdev->vpdev);
scif_remove:
	FUNC11(mdev->scdev);
dma_free:
	FUNC6(mdev);
dma_remove:
	FUNC4(mdev->dma_mbdev);
unlock_ret:
	return rc;
}
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
struct TYPE_5__ {int /*<<< orphan*/  len; scalar_t__ va; } ;
struct vop_vringh {TYPE_2__ vring; int /*<<< orphan*/  wiov; int /*<<< orphan*/  riov; scalar_t__ buf; int /*<<< orphan*/  buf_da; } ;
struct vop_vdev {TYPE_3__* dd; struct vop_vringh* vvr; int /*<<< orphan*/  virtio_bh_work; int /*<<< orphan*/  virtio_cookie; int /*<<< orphan*/  dc; struct vop_device* vpdev; struct vop_info* vi; } ;
struct vop_info {int dummy; } ;
struct vop_device {int /*<<< orphan*/  dev; TYPE_1__* hw_ops; } ;
struct mic_vqconfig {int /*<<< orphan*/  address; } ;
struct mic_bootparam {int dummy; } ;
struct TYPE_6__ {int num_vq; int type; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free_irq ) (struct vop_device*,int /*<<< orphan*/ ,struct vop_vdev*) ;struct mic_bootparam* (* get_dp ) (struct vop_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  VOP_INT_DMA_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mic_vqconfig* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct mic_bootparam* FUNC7 (struct vop_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct vop_device*,int /*<<< orphan*/ ,struct vop_vdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct vop_info*,int /*<<< orphan*/ ,struct vop_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct vop_vdev *vdev)
{
	struct vop_info *vi = vdev->vi;
	struct vop_device *vpdev = vdev->vpdev;
	int i;
	struct mic_vqconfig *vqconfig;
	struct mic_bootparam *bootparam = vpdev->hw_ops->get_dp(vpdev);

	if (!bootparam)
		goto skip_hot_remove;
	FUNC9(vi, vdev->dc, vpdev);
skip_hot_remove:
	vpdev->hw_ops->free_irq(vpdev, vdev->virtio_cookie, vdev);
	FUNC1(&vdev->virtio_bh_work);
	vqconfig = FUNC5(vdev->dd);
	for (i = 0; i < vdev->dd->num_vq; i++) {
		struct vop_vringh *vvr = &vdev->vvr[i];

		FUNC0(&vpdev->dev,
				 vvr->buf_da, VOP_INT_DMA_BUF_SIZE,
				 DMA_BIDIRECTIONAL);
		FUNC2((unsigned long)vvr->buf,
			   FUNC3(VOP_INT_DMA_BUF_SIZE));
		FUNC10(&vvr->riov);
		FUNC10(&vvr->wiov);
		FUNC0(&vpdev->dev, FUNC4(vqconfig[i].address),
				 vvr->vring.len, DMA_BIDIRECTIONAL);
		FUNC2((unsigned long)vvr->vring.va,
			   FUNC3(vvr->vring.len));
	}
	/*
	 * Order the type update with previous stores. This write barrier
	 * is paired with the corresponding read barrier before the uncached
	 * system memory read of the type, on the card while scanning the
	 * device page.
	 */
	FUNC6();
	vdev->dd->type = -1;
}
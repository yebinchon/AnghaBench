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
struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; struct vsp1_device* vsp1; } ;
struct TYPE_5__ {void* vflip; void* rotate; void* hflip; } ;
struct TYPE_6__ {TYPE_1__ ctrls; int /*<<< orphan*/  lock; } ;
struct vsp1_rwpf {TYPE_4__ ctrls; TYPE_3__ entity; TYPE_2__ flip; } ;
struct vsp1_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_ROTATE ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  VSP1_HAS_WPF_HFLIP ; 
 int /*<<< orphan*/  VSP1_HAS_WPF_VFLIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 void* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vsp1_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vsp1_rwpf*,unsigned int) ; 
 int /*<<< orphan*/  vsp1_wpf_ctrl_ops ; 

__attribute__((used)) static int FUNC6(struct vsp1_rwpf *wpf)
{
	struct vsp1_device *vsp1 = wpf->entity.vsp1;
	unsigned int num_flip_ctrls;

	FUNC1(&wpf->flip.lock);

	if (wpf->entity.index != 0) {
		/* Only WPF0 supports flipping. */
		num_flip_ctrls = 0;
	} else if (FUNC4(vsp1, VSP1_HAS_WPF_HFLIP)) {
		/*
		 * When horizontal flip is supported the WPF implements three
		 * controls (horizontal flip, vertical flip and rotation).
		 */
		num_flip_ctrls = 3;
	} else if (FUNC4(vsp1, VSP1_HAS_WPF_VFLIP)) {
		/*
		 * When only vertical flip is supported the WPF implements a
		 * single control (vertical flip).
		 */
		num_flip_ctrls = 1;
	} else {
		/* Otherwise flipping is not supported. */
		num_flip_ctrls = 0;
	}

	FUNC5(wpf, num_flip_ctrls);

	if (num_flip_ctrls >= 1) {
		wpf->flip.ctrls.vflip =
			FUNC3(&wpf->ctrls, &vsp1_wpf_ctrl_ops,
					  V4L2_CID_VFLIP, 0, 1, 1, 0);
	}

	if (num_flip_ctrls == 3) {
		wpf->flip.ctrls.hflip =
			FUNC3(&wpf->ctrls, &vsp1_wpf_ctrl_ops,
					  V4L2_CID_HFLIP, 0, 1, 1, 0);
		wpf->flip.ctrls.rotate =
			FUNC3(&wpf->ctrls, &vsp1_wpf_ctrl_ops,
					  V4L2_CID_ROTATE, 0, 270, 90, 0);
		FUNC2(3, &wpf->flip.ctrls.vflip);
	}

	if (wpf->ctrls.error) {
		FUNC0(vsp1->dev, "wpf%u: failed to initialize controls\n",
			wpf->entity.index);
		return wpf->ctrls.error;
	}

	return 0;
}
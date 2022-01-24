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
struct TYPE_2__ {int index; struct vsp1_device* vsp1; } ;
struct vsp1_rwpf {TYPE_1__ entity; } ;
struct vsp1_device {int dummy; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int VI6_WPF_OFFSET ; 
 scalar_t__ VI6_WPF_SRCRPF ; 
 struct vsp1_rwpf* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct vsp1_device*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *subdev, int enable)
{
	struct vsp1_rwpf *wpf = FUNC1(subdev);
	struct vsp1_device *vsp1 = wpf->entity.vsp1;

	if (enable)
		return 0;

	/*
	 * Write to registers directly when stopping the stream as there will be
	 * no pipeline run to apply the display list.
	 */
	FUNC2(vsp1, FUNC0(wpf->entity.index), 0);
	FUNC2(vsp1, wpf->entity.index * VI6_WPF_OFFSET +
		   VI6_WPF_SRCRPF, 0);

	return 0;
}
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
struct TYPE_2__ {scalar_t__ sizeimage; } ;
struct via_camera {TYPE_1__ user_format; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct via_camera*,char*,scalar_t__,scalar_t__) ; 
 struct via_camera* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct via_camera *cam = FUNC1(vb->vb2_queue);

	if (FUNC2(vb, 0) < cam->user_format.sizeimage) {
		FUNC0(cam,
			"Plane size too small (%lu < %u)\n",
			FUNC2(vb, 0),
			cam->user_format.sizeimage);
		return -EINVAL;
	}

	FUNC3(vb, 0, cam->user_format.sizeimage);

	return 0;
}
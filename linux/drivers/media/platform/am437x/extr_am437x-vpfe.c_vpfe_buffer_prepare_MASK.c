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
struct TYPE_6__ {int /*<<< orphan*/  field; int /*<<< orphan*/  sizeimage; } ;
struct TYPE_5__ {TYPE_3__ pix; } ;
struct TYPE_4__ {TYPE_2__ fmt; } ;
struct vpfe_device {TYPE_1__ fmt; } ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  field; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 struct vpfe_device* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct vpfe_device *vpfe = FUNC1(vb->vb2_queue);

	FUNC4(vb, 0, vpfe->fmt.fmt.pix.sizeimage);

	if (FUNC2(vb, 0) > FUNC3(vb, 0))
		return -EINVAL;

	vbuf->field = vpfe->fmt.fmt.pix.field;

	return 0;
}
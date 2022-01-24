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
struct vb2_v4l2_buffer {int /*<<< orphan*/  field; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_4__ {unsigned long sizeimage; int /*<<< orphan*/  field; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct isc_device {TYPE_3__ fmt; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long) ; 
 struct isc_device* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct isc_device *isc = FUNC2(vb->vb2_queue);
	unsigned long size = isc->fmt.fmt.pix.sizeimage;

	if (FUNC3(vb, 0) < size) {
		FUNC1(&isc->v4l2_dev, "buffer too small (%lu < %lu)\n",
			 FUNC3(vb, 0), size);
		return -EINVAL;
	}

	FUNC4(vb, 0, size);

	vbuf->field = isc->fmt.fmt.pix.field;

	return 0;
}
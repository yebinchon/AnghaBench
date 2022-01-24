#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vb2_buf; } ;
struct vip_buffer {TYPE_1__ vb; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_4__ {unsigned long sizeimage; } ;
struct sta2x11_vip {int /*<<< orphan*/  v4l2_dev; TYPE_2__ format; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 struct vip_buffer* FUNC1 (struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long) ; 
 struct sta2x11_vip* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct sta2x11_vip *vip = FUNC3(vb->vb2_queue);
	struct vip_buffer *vip_buf = FUNC1(vbuf);
	unsigned long size;

	size = vip->format.sizeimage;
	if (FUNC4(vb, 0) < size) {
		FUNC2(&vip->v4l2_dev, "buffer too small (%lu < %lu)\n",
			 FUNC4(vb, 0), size);
		return -EINVAL;
	}

	FUNC5(&vip_buf->vb.vb2_buf, 0, size);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vsp1_histogram_buffer {int /*<<< orphan*/  addr; } ;
struct vsp1_histogram {scalar_t__ data_size; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int num_planes; int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 struct vsp1_histogram_buffer* FUNC1 (struct vb2_v4l2_buffer*) ; 
 struct vsp1_histogram* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct vsp1_histogram *histo = FUNC2(vb->vb2_queue);
	struct vsp1_histogram_buffer *buf = FUNC1(vbuf);

	if (vb->num_planes != 1)
		return -EINVAL;

	if (FUNC3(vb, 0) < histo->data_size)
		return -EINVAL;

	buf->addr = FUNC4(vb, 0);

	return 0;
}
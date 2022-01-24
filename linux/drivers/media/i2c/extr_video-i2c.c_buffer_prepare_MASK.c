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
struct video_i2c_data {TYPE_1__* chip; } ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  field; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_2__ {unsigned int buffer_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 struct video_i2c_data* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct video_i2c_data *data = FUNC1(vb->vb2_queue);
	unsigned int size = data->chip->buffer_size;

	if (FUNC2(vb, 0) < size)
		return -EINVAL;

	vbuf->field = V4L2_FIELD_NONE;
	FUNC3(vb, 0, size);

	return 0;
}
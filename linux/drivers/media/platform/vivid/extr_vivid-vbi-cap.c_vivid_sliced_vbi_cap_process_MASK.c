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
struct TYPE_4__ {struct v4l2_sliced_vbi_data* data; } ;
struct vivid_dev {int vbi_cap_seq_count; scalar_t__ field_cap; size_t input; TYPE_2__ vbi_gen; int /*<<< orphan*/ * std_signal_mode; } ;
struct TYPE_3__ {int sequence; int /*<<< orphan*/  vb2_buf; } ;
struct vivid_buffer {TYPE_1__ vb; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_FIELD_ALTERNATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_sliced_vbi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct v4l2_sliced_vbi_data* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vivid_dev*,int) ; 

void FUNC5(struct vivid_dev *dev,
			struct vivid_buffer *buf)
{
	struct v4l2_sliced_vbi_data *vbuf =
			FUNC3(&buf->vb.vb2_buf, 0);

	buf->vb.sequence = dev->vbi_cap_seq_count;
	if (dev->field_cap == V4L2_FIELD_ALTERNATE)
		buf->vb.sequence /= 2;

	FUNC4(dev, buf->vb.sequence);

	FUNC1(vbuf, 0, FUNC2(&buf->vb.vb2_buf, 0));
	if (!FUNC0(dev->std_signal_mode[dev->input])) {
		unsigned i;

		for (i = 0; i < 25; i++)
			vbuf[i] = dev->vbi_gen.data[i];
	}
}
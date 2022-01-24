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
typedef  int /*<<< orphan*/  u8 ;
struct vivid_dev {int vbi_cap_seq_count; scalar_t__ field_cap; size_t input; int /*<<< orphan*/  vbi_gen; int /*<<< orphan*/ * std_signal_mode; } ;
struct TYPE_2__ {int sequence; int /*<<< orphan*/  vb2_buf; } ;
struct vivid_buffer {TYPE_1__ vb; } ;
struct v4l2_vbi_format {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_FIELD_ALTERNATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vivid_dev*,struct v4l2_vbi_format*) ; 
 int /*<<< orphan*/  FUNC5 (struct vivid_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct v4l2_vbi_format*,int /*<<< orphan*/ *) ; 

void FUNC7(struct vivid_dev *dev, struct vivid_buffer *buf)
{
	struct v4l2_vbi_format vbi;
	u8 *vbuf = FUNC3(&buf->vb.vb2_buf, 0);

	FUNC4(dev, &vbi);
	buf->vb.sequence = dev->vbi_cap_seq_count;
	if (dev->field_cap == V4L2_FIELD_ALTERNATE)
		buf->vb.sequence /= 2;

	FUNC5(dev, buf->vb.sequence);

	FUNC1(vbuf, 0x10, FUNC2(&buf->vb.vb2_buf, 0));

	if (!FUNC0(dev->std_signal_mode[dev->input]))
		FUNC6(&dev->vbi_gen, &vbi, vbuf);
}
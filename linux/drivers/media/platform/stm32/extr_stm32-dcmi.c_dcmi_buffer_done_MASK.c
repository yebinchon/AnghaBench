#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  index; int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {scalar_t__ sequence; TYPE_1__ vb2_buf; int /*<<< orphan*/  field; } ;
struct stm32_dcmi {int /*<<< orphan*/ * active; int /*<<< orphan*/  buffers_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  sequence; } ;
struct dcmi_buf {struct vb2_v4l2_buffer vb; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC5(struct stm32_dcmi *dcmi,
			     struct dcmi_buf *buf,
			     size_t bytesused,
			     int err)
{
	struct vb2_v4l2_buffer *vbuf;

	if (!buf)
		return;

	FUNC2(&buf->list);

	vbuf = &buf->vb;

	vbuf->sequence = dcmi->sequence++;
	vbuf->field = V4L2_FIELD_NONE;
	vbuf->vb2_buf.timestamp = FUNC1();
	FUNC4(&vbuf->vb2_buf, 0, bytesused);
	FUNC3(&vbuf->vb2_buf,
			err ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);
	FUNC0(dcmi->dev, "buffer[%d] done seq=%d, bytesused=%zu\n",
		vbuf->vb2_buf.index, vbuf->sequence, bytesused);

	dcmi->buffers_count++;
	dcmi->active = NULL;
}
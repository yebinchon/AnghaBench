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
struct vb2_v4l2_buffer {int flags; } ;
struct v4l2_event {int /*<<< orphan*/  type; } ;
struct coda_ctx {int /*<<< orphan*/  fh; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int V4L2_BUF_FLAG_LAST ; 
 int /*<<< orphan*/  V4L2_EVENT_EOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct v4l2_event const*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_v4l2_buffer*,int) ; 

void FUNC2(struct coda_ctx *ctx, struct vb2_v4l2_buffer *buf,
		       enum vb2_buffer_state state)
{
	const struct v4l2_event eos_event = {
		.type = V4L2_EVENT_EOS
	};

	if (buf->flags & V4L2_BUF_FLAG_LAST)
		FUNC0(&ctx->fh, &eos_event);

	FUNC1(buf, state);
}
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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct deinterlace_ctx {TYPE_1__ fh; } ;

/* Variables and functions */
 struct vb2_v4l2_buffer* FUNC0 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vb2_v4l2_buffer*) ; 
 struct deinterlace_ctx* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC0(vb);
	struct deinterlace_ctx *ctx = FUNC2(vb->vb2_queue);

	FUNC1(ctx->fh.m2m_ctx, vbuf);
}
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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct gsc_ctx {scalar_t__ m2m_ctx; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct gsc_ctx*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC1 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct vb2_v4l2_buffer*) ; 
 struct gsc_ctx* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC1(vb);
	struct gsc_ctx *ctx = FUNC3(vb->vb2_queue);

	FUNC0("ctx: %p, ctx->state: 0x%x", ctx, ctx->state);

	if (ctx->m2m_ctx)
		FUNC2(ctx->m2m_ctx, vbuf);
}
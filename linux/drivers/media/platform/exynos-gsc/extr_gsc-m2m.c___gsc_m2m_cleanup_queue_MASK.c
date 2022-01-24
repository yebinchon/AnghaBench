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
struct gsc_ctx {int /*<<< orphan*/  m2m_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gsc_ctx *ctx)
{
	struct vb2_v4l2_buffer *src_vb, *dst_vb;

	while (FUNC3(ctx->m2m_ctx) > 0) {
		src_vb = FUNC4(ctx->m2m_ctx);
		FUNC0(src_vb, VB2_BUF_STATE_ERROR);
	}

	while (FUNC2(ctx->m2m_ctx) > 0) {
		dst_vb = FUNC1(ctx->m2m_ctx);
		FUNC0(dst_vb, VB2_BUF_STATE_ERROR);
	}
}
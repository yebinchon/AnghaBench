#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fimc_ctx {TYPE_3__ fh; TYPE_2__* fimc_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_5__ {TYPE_1__ m2m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct fimc_ctx *ctx, int vb_state)
{
	struct vb2_v4l2_buffer *src_vb, *dst_vb;

	if (!ctx || !ctx->fh.m2m_ctx)
		return;

	src_vb = FUNC3(ctx->fh.m2m_ctx);
	dst_vb = FUNC1(ctx->fh.m2m_ctx);

	if (src_vb)
		FUNC0(src_vb, vb_state);
	if (dst_vb)
		FUNC0(dst_vb, vb_state);
	if (src_vb && dst_vb)
		FUNC2(ctx->fimc_dev->m2m.m2m_dev,
				    ctx->fh.m2m_ctx);
}
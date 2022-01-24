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
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct pxp_ctx {TYPE_1__ fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pxp_ctx*,struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *priv)
{
	struct pxp_ctx *ctx = priv;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;

	src_buf = FUNC2(ctx->fh.m2m_ctx);
	dst_buf = FUNC1(ctx->fh.m2m_ctx);

	FUNC0(ctx, src_buf, dst_buf);
}
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
struct mtk_jpeg_ctx {TYPE_1__ fh; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vb2_v4l2_buffer *FUNC3(struct mtk_jpeg_ctx *ctx,
				 enum v4l2_buf_type type)
{
	if (FUNC0(type))
		return FUNC2(ctx->fh.m2m_ctx);
	else
		return FUNC1(ctx->fh.m2m_ctx);
}
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
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_1__ fh; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 scalar_t__ S5P_JPEG_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct s5p_jpeg_ctx *ctx)
{
	struct s5p_jpeg *jpeg = ctx->jpeg;
	struct vb2_v4l2_buffer *vb;
	unsigned int jpeg_addr = 0;

	if (ctx->mode == S5P_JPEG_ENCODE)
		vb = FUNC1(ctx->fh.m2m_ctx);
	else
		vb = FUNC2(ctx->fh.m2m_ctx);

	jpeg_addr = FUNC3(&vb->vb2_buf, 0);
	FUNC0(jpeg->regs, jpeg_addr);
}
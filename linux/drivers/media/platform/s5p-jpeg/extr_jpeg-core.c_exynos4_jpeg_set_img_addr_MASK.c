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
typedef  int u32 ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct s5p_jpeg_fmt {scalar_t__ h_align; int colplanes; scalar_t__ fourcc; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct TYPE_5__ {int w; int h; struct s5p_jpeg_fmt* fmt; } ;
struct TYPE_4__ {int w; int h; struct s5p_jpeg_fmt* fmt; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_3__ fh; TYPE_2__ cap_q; TYPE_1__ out_q; struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg_addr {int cb; int cr; int y; } ;
struct s5p_jpeg {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 scalar_t__ S5P_JPEG_ENCODE ; 
 scalar_t__ V4L2_PIX_FMT_YUV420 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct s5p_jpeg_addr*) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct s5p_jpeg_ctx *ctx)
{
	struct s5p_jpeg *jpeg = ctx->jpeg;
	struct s5p_jpeg_fmt *fmt;
	struct vb2_v4l2_buffer *vb;
	struct s5p_jpeg_addr jpeg_addr = {};
	u32 pix_size, padding_bytes = 0;

	jpeg_addr.cb = 0;
	jpeg_addr.cr = 0;

	pix_size = ctx->cap_q.w * ctx->cap_q.h;

	if (ctx->mode == S5P_JPEG_ENCODE) {
		vb = FUNC2(ctx->fh.m2m_ctx);
		fmt = ctx->out_q.fmt;
		if (ctx->out_q.w % 2 && fmt->h_align > 0)
			padding_bytes = ctx->out_q.h;
	} else {
		fmt = ctx->cap_q.fmt;
		vb = FUNC1(ctx->fh.m2m_ctx);
	}

	jpeg_addr.y = FUNC3(&vb->vb2_buf, 0);

	if (fmt->colplanes == 2) {
		jpeg_addr.cb = jpeg_addr.y + pix_size - padding_bytes;
	} else if (fmt->colplanes == 3) {
		jpeg_addr.cb = jpeg_addr.y + pix_size;
		if (fmt->fourcc == V4L2_PIX_FMT_YUV420)
			jpeg_addr.cr = jpeg_addr.cb + pix_size / 4;
		else
			jpeg_addr.cr = jpeg_addr.cb + pix_size / 2;
	}

	FUNC0(jpeg->regs, &jpeg_addr);
}
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
typedef  int u32 ;
struct vdoa_q_data {scalar_t__ pixelformat; int height; int width; int bytesperline; } ;
struct vdoa_data {scalar_t__ regs; struct vdoa_ctx* curr_ctx; } ;
struct vdoa_ctx {struct vdoa_q_data* q_data; int /*<<< orphan*/  submitted_job; int /*<<< orphan*/  completion; struct vdoa_data* vdoa; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 size_t V4L2_M2M_DST ; 
 size_t V4L2_M2M_SRC ; 
 scalar_t__ V4L2_PIX_FMT_NV12 ; 
 scalar_t__ V4L2_PIX_FMT_NV21 ; 
 scalar_t__ V4L2_PIX_FMT_YUYV ; 
 scalar_t__ VDOAC ; 
 int VDOAC_PFS ; 
 scalar_t__ VDOAFP ; 
 scalar_t__ VDOAIE ; 
 scalar_t__ VDOAIEBA00 ; 
 int VDOAIE_EIEOT ; 
 int VDOAIE_EITERR ; 
 scalar_t__ VDOAIUBO ; 
 scalar_t__ VDOASL ; 
 scalar_t__ VDOASRR ; 
 int VDOASRR_START ; 
 scalar_t__ VDOAVEBA0 ; 
 scalar_t__ VDOAVUBO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vdoa_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct vdoa_ctx *ctx, dma_addr_t dst, dma_addr_t src)
{
	struct vdoa_q_data *src_q_data, *dst_q_data;
	struct vdoa_data *vdoa = ctx->vdoa;
	u32 val;

	if (vdoa->curr_ctx)
		FUNC2(vdoa->curr_ctx);

	vdoa->curr_ctx = ctx;

	FUNC0(&ctx->completion);
	ctx->submitted_job++;

	src_q_data = &ctx->q_data[V4L2_M2M_SRC];
	dst_q_data = &ctx->q_data[V4L2_M2M_DST];

	/* Progressive, no sync, 1 frame per run */
	if (dst_q_data->pixelformat == V4L2_PIX_FMT_YUYV)
		val = VDOAC_PFS;
	else
		val = 0;
	FUNC3(val, vdoa->regs + VDOAC);

	FUNC3(dst_q_data->height << 16 | dst_q_data->width,
	       vdoa->regs + VDOAFP);

	val = dst;
	FUNC3(val, vdoa->regs + VDOAIEBA00);

	FUNC3(src_q_data->bytesperline << 16 | dst_q_data->bytesperline,
	       vdoa->regs + VDOASL);

	if (dst_q_data->pixelformat == V4L2_PIX_FMT_NV12 ||
	    dst_q_data->pixelformat == V4L2_PIX_FMT_NV21)
		val = dst_q_data->bytesperline * dst_q_data->height;
	else
		val = 0;
	FUNC3(val, vdoa->regs + VDOAIUBO);

	val = src;
	FUNC3(val, vdoa->regs + VDOAVEBA0);
	val = FUNC1(src_q_data->bytesperline * src_q_data->height, 4096);
	FUNC3(val, vdoa->regs + VDOAVUBO);

	/* Enable interrupts and start transfer */
	FUNC3(VDOAIE_EITERR | VDOAIE_EIEOT, vdoa->regs + VDOAIE);
	FUNC3(VDOASRR_START, vdoa->regs + VDOASRR);
}
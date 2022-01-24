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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct coda_ctx {TYPE_1__* codec; } ;
struct TYPE_2__ {int src_fourcc; } ;

/* Variables and functions */
#define  V4L2_PIX_FMT_MPEG2 129 
#define  V4L2_PIX_FMT_MPEG4 128 
 int /*<<< orphan*/  FUNC0 (struct coda_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct coda_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct coda_ctx *ctx,
				     struct vb2_v4l2_buffer *src_buf,
				     u32 payload)
{
	u8 *vaddr = FUNC2(&src_buf->vb2_buf, 0);
	u32 size = 0;

	switch (ctx->codec->src_fourcc) {
	case V4L2_PIX_FMT_MPEG2:
		size = FUNC0(ctx, vaddr, payload);
		break;
	case V4L2_PIX_FMT_MPEG4:
		size = FUNC1(ctx, vaddr, payload);
		break;
	default:
		break;
	}

	return size;
}
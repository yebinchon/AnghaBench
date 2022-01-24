#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_1__ pix_mp; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_2__ fmt; } ;
struct mtk_jpeg_fmt {int fourcc; } ;
struct TYPE_7__ {struct mtk_jpeg_fmt* fmt; } ;
struct mtk_jpeg_ctx {TYPE_4__* jpeg; TYPE_3__ out_q; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_JPEG_FMT_TYPE_OUTPUT ; 
 int /*<<< orphan*/  debug ; 
 struct mtk_jpeg_ctx* FUNC0 (void*) ; 
 struct mtk_jpeg_fmt* FUNC1 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct v4l2_format*,struct mtk_jpeg_fmt*,struct mtk_jpeg_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					   struct v4l2_format *f)
{
	struct mtk_jpeg_ctx *ctx = FUNC0(priv);
	struct mtk_jpeg_fmt *fmt;

	fmt = FUNC1(ctx, f->fmt.pix_mp.pixelformat,
				   MTK_JPEG_FMT_TYPE_OUTPUT);
	if (!fmt)
		fmt = ctx->out_q.fmt;

	FUNC3(2, debug, &ctx->jpeg->v4l2_dev, "(%d) try_fmt:%c%c%c%c\n",
		 f->type,
		 (fmt->fourcc & 0xff),
		 (fmt->fourcc >>  8 & 0xff),
		 (fmt->fourcc >> 16 & 0xff),
		 (fmt->fourcc >> 24 & 0xff));

	return FUNC2(f, fmt, ctx, MTK_JPEG_FMT_TYPE_OUTPUT);
}
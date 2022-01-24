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
struct vim2m_fmt {int types; } ;
struct vim2m_ctx {int /*<<< orphan*/  quant; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_5__ {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int MEM2MEM_CAPTURE ; 
 struct vim2m_ctx* FUNC0 (struct file*) ; 
 struct vim2m_fmt* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* formats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct v4l2_format*,struct vim2m_fmt*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct vim2m_fmt *fmt;
	struct vim2m_ctx *ctx = FUNC0(file);

	fmt = FUNC1(f->fmt.pix.pixelformat);
	if (!fmt) {
		f->fmt.pix.pixelformat = formats[0].fourcc;
		fmt = FUNC1(f->fmt.pix.pixelformat);
	}
	if (!(fmt->types & MEM2MEM_CAPTURE)) {
		FUNC2(&ctx->dev->v4l2_dev,
			 "Fourcc format (0x%08x) invalid.\n",
			 f->fmt.pix.pixelformat);
		return -EINVAL;
	}
	f->fmt.pix.colorspace = ctx->colorspace;
	f->fmt.pix.xfer_func = ctx->xfer_func;
	f->fmt.pix.ycbcr_enc = ctx->ycbcr_enc;
	f->fmt.pix.quantization = ctx->quant;

	return FUNC3(f, fmt);
}
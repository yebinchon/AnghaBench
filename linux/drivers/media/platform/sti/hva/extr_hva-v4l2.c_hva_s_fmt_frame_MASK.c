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
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ pixelformat; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_1__ fmt; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ pixelformat; int /*<<< orphan*/  size; void* aligned_height; void* aligned_width; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct hva_ctx {int /*<<< orphan*/  flags; TYPE_3__ frameinfo; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  name; TYPE_2__ fh; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  HVA_FLAG_FRAMEINFO ; 
 int /*<<< orphan*/  HVA_HEIGHT_ALIGNMENT ; 
 int /*<<< orphan*/  HVA_WIDTH_ALIGNMENT ; 
 struct device* FUNC1 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct hva_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*,void*,struct v4l2_format*) ; 
 struct vb2_queue* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *fh, struct v4l2_format *f)
{
	struct hva_ctx *ctx = FUNC3(file->private_data);
	struct device *dev = FUNC1(ctx);
	struct v4l2_pix_format *pix = &f->fmt.pix;
	struct vb2_queue *vq;
	int ret;

	ret = FUNC4(file, fh, f);
	if (ret) {
		FUNC2(dev, "%s V4L2 S_FMT (OUTPUT): unsupported format %.4s\n",
			ctx->name, (char *)&pix->pixelformat);
		return ret;
	}

	vq = FUNC5(ctx->fh.m2m_ctx, f->type);
	if (FUNC6(vq)) {
		FUNC2(dev, "%s V4L2 S_FMT (OUTPUT): queue busy\n", ctx->name);
		return -EBUSY;
	}

	ctx->colorspace = pix->colorspace;
	ctx->xfer_func = pix->xfer_func;
	ctx->ycbcr_enc = pix->ycbcr_enc;
	ctx->quantization = pix->quantization;

	ctx->frameinfo.aligned_width = FUNC0(pix->width, HVA_WIDTH_ALIGNMENT);
	ctx->frameinfo.aligned_height = FUNC0(pix->height,
					      HVA_HEIGHT_ALIGNMENT);
	ctx->frameinfo.size = pix->sizeimage;
	ctx->frameinfo.pixelformat = pix->pixelformat;
	ctx->frameinfo.width = pix->width;
	ctx->frameinfo.height = pix->height;
	ctx->flags |= HVA_FLAG_FRAMEINFO;

	return 0;
}
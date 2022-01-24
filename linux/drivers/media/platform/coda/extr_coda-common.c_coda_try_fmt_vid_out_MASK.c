#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct coda_q_data {int /*<<< orphan*/  fourcc; } ;
struct coda_dev {int dummy; } ;
struct coda_ctx {struct coda_dev* dev; } ;
struct coda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ V4L2_COLORSPACE_DEFAULT ; 
 struct coda_codec* FUNC0 (struct coda_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct coda_ctx*,struct coda_codec const*,struct v4l2_format*) ; 
 int FUNC3 (struct coda_ctx*,struct v4l2_format*) ; 
 struct coda_ctx* FUNC4 (void*) ; 
 struct coda_q_data* FUNC5 (struct coda_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct coda_ctx *ctx = FUNC4(priv);
	struct coda_dev *dev = ctx->dev;
	const struct coda_q_data *q_data_dst;
	const struct coda_codec *codec;
	int ret;

	ret = FUNC3(ctx, f);
	if (ret < 0)
		return ret;

	if (f->fmt.pix.colorspace == V4L2_COLORSPACE_DEFAULT)
		FUNC1(&f->fmt.pix);

	q_data_dst = FUNC5(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
	codec = FUNC0(dev, f->fmt.pix.pixelformat, q_data_dst->fourcc);

	return FUNC2(ctx, codec, f);
}
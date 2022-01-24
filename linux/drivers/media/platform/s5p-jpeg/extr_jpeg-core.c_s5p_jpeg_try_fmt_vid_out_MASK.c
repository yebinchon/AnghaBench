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
struct TYPE_5__ {int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct s5p_jpeg_fmt {int dummy; } ;
struct s5p_jpeg_ctx {TYPE_1__* jpeg; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FMT_TYPE_OUTPUT ; 
 struct s5p_jpeg_ctx* FUNC0 (void*) ; 
 struct s5p_jpeg_fmt* FUNC1 (struct s5p_jpeg_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct v4l2_format*,struct s5p_jpeg_fmt*,struct s5p_jpeg_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct s5p_jpeg_ctx *ctx = FUNC0(priv);
	struct s5p_jpeg_fmt *fmt;

	fmt = FUNC1(ctx, f->fmt.pix.pixelformat,
						FMT_TYPE_OUTPUT);
	if (!fmt) {
		FUNC2(&ctx->jpeg->v4l2_dev,
			 "Fourcc format (0x%08x) invalid.\n",
			 f->fmt.pix.pixelformat);
		return -EINVAL;
	}

	return FUNC3(f, fmt, ctx, FMT_TYPE_OUTPUT);
}
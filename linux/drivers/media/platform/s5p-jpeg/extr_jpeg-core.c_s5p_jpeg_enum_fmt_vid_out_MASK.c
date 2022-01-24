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
struct v4l2_fmtdesc {int dummy; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ S5P_JPEG_ENCODE ; 
 int /*<<< orphan*/  SJPEG_FMT_FLAG_DEC_OUTPUT ; 
 int /*<<< orphan*/  SJPEG_FMT_FLAG_ENC_OUTPUT ; 
 int /*<<< orphan*/  SJPEG_NUM_FORMATS ; 
 int FUNC0 (struct s5p_jpeg_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_fmtdesc*,int /*<<< orphan*/ ) ; 
 struct s5p_jpeg_ctx* FUNC1 (void*) ; 
 int /*<<< orphan*/  sjpeg_formats ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				   struct v4l2_fmtdesc *f)
{
	struct s5p_jpeg_ctx *ctx = FUNC1(priv);

	if (ctx->mode == S5P_JPEG_ENCODE)
		return FUNC0(ctx, sjpeg_formats, SJPEG_NUM_FORMATS, f,
				SJPEG_FMT_FLAG_ENC_OUTPUT);

	return FUNC0(ctx, sjpeg_formats, SJPEG_NUM_FORMATS, f,
			SJPEG_FMT_FLAG_DEC_OUTPUT);
}
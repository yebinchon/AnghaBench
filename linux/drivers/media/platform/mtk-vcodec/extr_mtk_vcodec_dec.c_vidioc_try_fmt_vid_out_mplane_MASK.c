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
struct v4l2_pix_format_mplane {TYPE_1__* plane_fmt; } ;
struct TYPE_6__ {int /*<<< orphan*/  pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix; struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct mtk_video_fmt {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_5__ {scalar_t__ sizeimage; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t OUT_FMT_IDX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct mtk_video_fmt* FUNC1 (struct v4l2_format*) ; 
 TYPE_4__* mtk_video_formats ; 
 int FUNC2 (struct v4l2_format*,struct mtk_video_fmt const*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;
	const struct mtk_video_fmt *fmt;

	fmt = FUNC1(f);
	if (!fmt) {
		f->fmt.pix.pixelformat = mtk_video_formats[OUT_FMT_IDX].fourcc;
		fmt = FUNC1(f);
	}

	if (pix_fmt_mp->plane_fmt[0].sizeimage == 0) {
		FUNC0("sizeimage of output format must be given");
		return -EINVAL;
	}

	return FUNC2(f, fmt);
}
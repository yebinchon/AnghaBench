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
struct v4l2_pix_format_mplane {int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_2__* plane_fmt; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct s5p_mfc_fmt {int versions; } ;
struct s5p_mfc_dev {TYPE_3__* variant; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int version_bit; } ;
struct TYPE_5__ {int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  bytesperline; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MFC_FMT_ENC ; 
 int /*<<< orphan*/  MFC_FMT_RAW ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 struct s5p_mfc_fmt* FUNC0 (struct v4l2_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 struct s5p_mfc_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, struct v4l2_format *f)
{
	struct s5p_mfc_dev *dev = FUNC3(file);
	struct s5p_mfc_fmt *fmt;
	struct v4l2_pix_format_mplane *pix_fmt_mp = &f->fmt.pix_mp;

	if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
		fmt = FUNC0(f, MFC_FMT_ENC);
		if (!fmt) {
			FUNC1("failed to try output format\n");
			return -EINVAL;
		}
		if ((dev->variant->version_bit & fmt->versions) == 0) {
			FUNC1("Unsupported format by this MFC version.\n");
			return -EINVAL;
		}

		pix_fmt_mp->plane_fmt[0].bytesperline =
			pix_fmt_mp->plane_fmt[0].sizeimage;
	} else if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		fmt = FUNC0(f, MFC_FMT_RAW);
		if (!fmt) {
			FUNC1("failed to try output format\n");
			return -EINVAL;
		}
		if ((dev->variant->version_bit & fmt->versions) == 0) {
			FUNC1("Unsupported format by this MFC version.\n");
			return -EINVAL;
		}

		FUNC2(&pix_fmt_mp->width, 8, 1920, 1,
			&pix_fmt_mp->height, 4, 1080, 1, 0);
	} else {
		FUNC1("invalid buf type\n");
		return -EINVAL;
	}
	return 0;
}
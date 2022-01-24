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
struct vpfe_device {int /*<<< orphan*/  ccdc; } ;
struct v4l2_rect {int height; int /*<<< orphan*/  width; } ;
struct TYPE_3__ {int height; int bytesperline; int sizeimage; int /*<<< orphan*/  field; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int /*<<< orphan*/  type; } ;
typedef  enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
typedef  enum ccdc_buftype { ____Placeholder_ccdc_buftype } ccdc_buftype ;

/* Variables and functions */
 int CCDC_BUFTYPE_FLD_INTERLEAVED ; 
 int CCDC_BUFTYPE_FLD_SEPARATED ; 
 int CCDC_FRMFMT_INTERLACED ; 
 int CCDC_FRMFMT_PROGRESSIVE ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_FIELD_SEQ_TB ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_format*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct v4l2_rect*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vpfe_device*,char*) ; 

__attribute__((used)) static int FUNC7(struct vpfe_device *vpfe,
				      struct v4l2_format *f)
{
	struct v4l2_rect image_win;
	enum ccdc_buftype buf_type;
	enum ccdc_frmfmt frm_fmt;

	FUNC0(f, 0, sizeof(*f));
	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	FUNC3(&vpfe->ccdc, &image_win);
	f->fmt.pix.width = image_win.width;
	f->fmt.pix.height = image_win.height;
	f->fmt.pix.bytesperline = FUNC4(&vpfe->ccdc);
	f->fmt.pix.sizeimage = f->fmt.pix.bytesperline *
				f->fmt.pix.height;
	buf_type = FUNC1(&vpfe->ccdc);
	f->fmt.pix.pixelformat = FUNC5(&vpfe->ccdc);
	frm_fmt = FUNC2(&vpfe->ccdc);

	if (frm_fmt == CCDC_FRMFMT_PROGRESSIVE) {
		f->fmt.pix.field = V4L2_FIELD_NONE;
	} else if (frm_fmt == CCDC_FRMFMT_INTERLACED) {
		if (buf_type == CCDC_BUFTYPE_FLD_INTERLEAVED) {
			f->fmt.pix.field = V4L2_FIELD_INTERLACED;
		 } else if (buf_type == CCDC_BUFTYPE_FLD_SEPARATED) {
			f->fmt.pix.field = V4L2_FIELD_SEQ_TB;
		} else {
			FUNC6(vpfe, "Invalid buf_type\n");
			return -EINVAL;
		}
	} else {
		FUNC6(vpfe, "Invalid frm_fmt\n");
		return -EINVAL;
	}
	return 0;
}
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
struct TYPE_4__ {int field; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct vpfe_device {int /*<<< orphan*/  ccdc; TYPE_3__ fmt; int /*<<< orphan*/  bpp; int /*<<< orphan*/  crop; } ;
typedef  enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;

/* Variables and functions */
 int /*<<< orphan*/  CCDC_BUFTYPE_FLD_INTERLEAVED ; 
 int /*<<< orphan*/  CCDC_BUFTYPE_FLD_SEPARATED ; 
 int CCDC_FRMFMT_INTERLACED ; 
 int CCDC_FRMFMT_PROGRESSIVE ; 
 int EINVAL ; 
#define  V4L2_FIELD_INTERLACED 130 
#define  V4L2_FIELD_NONE 129 
#define  V4L2_FIELD_SEQ_TB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct vpfe_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct vpfe_device*,char*) ; 

__attribute__((used)) static int FUNC7(struct vpfe_device *vpfe)
{
	enum ccdc_frmfmt frm_fmt = CCDC_FRMFMT_INTERLACED;
	int ret = 0;

	FUNC5(2, vpfe, "vpfe_config_ccdc_image_format\n");

	FUNC5(1, vpfe, "pixelformat: %s\n",
		FUNC0(vpfe->fmt.fmt.pix.pixelformat));

	if (FUNC4(&vpfe->ccdc,
			vpfe->fmt.fmt.pix.pixelformat) < 0) {
		FUNC6(vpfe, "couldn't set pix format in ccdc\n");
		return -EINVAL;
	}

	/* configure the image window */
	FUNC3(&vpfe->ccdc, &vpfe->crop, vpfe->bpp);

	switch (vpfe->fmt.fmt.pix.field) {
	case V4L2_FIELD_INTERLACED:
		/* do nothing, since it is default */
		ret = FUNC1(
				&vpfe->ccdc,
				CCDC_BUFTYPE_FLD_INTERLEAVED);
		break;

	case V4L2_FIELD_NONE:
		frm_fmt = CCDC_FRMFMT_PROGRESSIVE;
		/* buffer type only applicable for interlaced scan */
		break;

	case V4L2_FIELD_SEQ_TB:
		ret = FUNC1(
				&vpfe->ccdc,
				CCDC_BUFTYPE_FLD_SEPARATED);
		break;

	default:
		return -EINVAL;
	}

	if (ret)
		return ret;

	return FUNC2(&vpfe->ccdc, frm_fmt);
}
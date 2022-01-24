#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct venc_state {scalar_t__ venc_type; TYPE_1__* pdata; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* setup_clock ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_STD_625_50 ; 
 int /*<<< orphan*/  VDAC_CONFIG_SD_V2 ; 
 int /*<<< orphan*/  VDAC_CONFIG_SD_V3 ; 
 int /*<<< orphan*/  VENC_CLKCTL ; 
 int /*<<< orphan*/  VENC_DACTST ; 
 int /*<<< orphan*/  VENC_SYNCCTL ; 
 int VENC_SYNCCTL_OVD ; 
 int VENC_SYNCCTL_OVD_SHIFT ; 
 int /*<<< orphan*/  VENC_VIDCTL ; 
 int /*<<< orphan*/  VENC_VMOD ; 
 int VENC_VMOD_TVTYP ; 
 int VENC_VMOD_TVTYP_SHIFT ; 
 int VENC_VMOD_VENC ; 
 int VENC_VMOD_VIE ; 
 int VENC_VMOD_VIE_SHIFT ; 
 int VENC_VMOD_VMD ; 
 int /*<<< orphan*/  VENC_YCCCTL ; 
 int /*<<< orphan*/  VPBE_ENC_STD ; 
 scalar_t__ VPBE_VERSION_2 ; 
 scalar_t__ VPBE_VERSION_3 ; 
 int /*<<< orphan*/  VPSS_VENC_CLOCK_SEL ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct venc_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd)
{
	struct venc_state *venc = FUNC1(sd);

	FUNC2(debug, 2, sd, "venc_set_pal\n");

	/* Setup clock at VPSS & VENC for SD */
	FUNC8(VPSS_VENC_CLOCK_SEL, 1);
	if (venc->pdata->setup_clock(VPBE_ENC_STD, V4L2_STD_625_50) < 0)
		return -EINVAL;

	FUNC4(venc->venc_type, VPBE_ENC_STD, V4L2_STD_625_50);
	FUNC5(sd, 0);

	if (venc->venc_type == VPBE_VERSION_3) {
		FUNC7(sd, VENC_CLKCTL, 0x1);
		FUNC7(sd, VENC_VIDCTL, 0);
		FUNC3(sd, VDAC_CONFIG_SD_V3);
	} else if (venc->venc_type == VPBE_VERSION_2) {
		FUNC7(sd, VENC_CLKCTL, 0x1);
		FUNC7(sd, VENC_VIDCTL, 0);
		FUNC3(sd, VDAC_CONFIG_SD_V2);
	} else {
		/* to set VENC CLK DIV to 1 - final clock is 54 MHz */
		FUNC6(sd, VENC_VIDCTL, 0, 1 << 1);
		/* Set REC656 Mode */
		FUNC7(sd, VENC_YCCCTL, 0x1);
	}

	FUNC6(sd, VENC_SYNCCTL, 1 << VENC_SYNCCTL_OVD_SHIFT,
			VENC_SYNCCTL_OVD);
	FUNC7(sd, VENC_VMOD, 0);
	FUNC6(sd, VENC_VMOD,
			(1 << VENC_VMOD_VIE_SHIFT),
			VENC_VMOD_VIE);
	FUNC6(sd, VENC_VMOD,
			(0 << VENC_VMOD_VMD), VENC_VMOD_VMD);
	FUNC6(sd, VENC_VMOD,
			(1 << VENC_VMOD_TVTYP_SHIFT),
			VENC_VMOD_TVTYP);
	FUNC7(sd, VENC_DACTST, 0x0);
	FUNC6(sd, VENC_VMOD, VENC_VMOD_VENC, VENC_VMOD_VENC);

	return 0;
}
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
struct venc_state {int /*<<< orphan*/  venc_type; struct venc_platform_data* pdata; } ;
struct venc_platform_data {scalar_t__ (* setup_clock ) (int /*<<< orphan*/ ,int) ;} ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int HDTV_720P ; 
 int /*<<< orphan*/  VENC_OSDCLK0 ; 
 int /*<<< orphan*/  VENC_OSDCLK1 ; 
 int /*<<< orphan*/  VENC_VMOD ; 
 int VENC_VMOD_HDMD ; 
 int VENC_VMOD_TVTYP ; 
 int VENC_VMOD_TVTYP_SHIFT ; 
 int VENC_VMOD_VENC ; 
 int VENC_VMOD_VIE ; 
 int VENC_VMOD_VIE_SHIFT ; 
 int /*<<< orphan*/  VENC_XHINTVL ; 
 int /*<<< orphan*/  VPBE_ENC_DV_TIMINGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct venc_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd)
{
	struct venc_state *venc = FUNC1(sd);
	struct venc_platform_data *pdata = venc->pdata;

	if (pdata->setup_clock(VPBE_ENC_DV_TIMINGS, 74250000) < 0)
		return -EINVAL;

	FUNC2(venc->venc_type, VPBE_ENC_DV_TIMINGS, 74250000);
	FUNC3(sd, 0);

	FUNC5(sd, VENC_OSDCLK0, 0);
	FUNC5(sd, VENC_OSDCLK1, 1);

	FUNC5(sd, VENC_VMOD, 0);
	/* DM365 component HD mode */
	FUNC4(sd, VENC_VMOD, (1 << VENC_VMOD_VIE_SHIFT),
	    VENC_VMOD_VIE);
	FUNC4(sd, VENC_VMOD, VENC_VMOD_HDMD, VENC_VMOD_HDMD);
	FUNC4(sd, VENC_VMOD, (HDTV_720P << VENC_VMOD_TVTYP_SHIFT),
		    VENC_VMOD_TVTYP);
	FUNC4(sd, VENC_VMOD, VENC_VMOD_VENC, VENC_VMOD_VENC);
	FUNC5(sd, VENC_XHINTVL, 0);
	return 0;
}
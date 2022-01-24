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
struct venc_state {scalar_t__ venc_type; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENC_CMPNT ; 
 int /*<<< orphan*/  VENC_CVBS ; 
 int /*<<< orphan*/  VENC_DACSEL ; 
 int /*<<< orphan*/  VENC_DCLKCTL ; 
 int /*<<< orphan*/  VENC_DRGBX1 ; 
 int /*<<< orphan*/  VENC_HINT ; 
 int /*<<< orphan*/  VENC_HSDLY ; 
 int /*<<< orphan*/  VENC_HSPLS ; 
 int /*<<< orphan*/  VENC_HSTART ; 
 int /*<<< orphan*/  VENC_HVALID ; 
 int /*<<< orphan*/  VENC_LCDOUT ; 
 int /*<<< orphan*/  VENC_OSDCLK0 ; 
 int /*<<< orphan*/  VENC_OSDCLK1 ; 
 int /*<<< orphan*/  VENC_SYNCCTL ; 
 int /*<<< orphan*/  VENC_VIDCTL ; 
 int /*<<< orphan*/  VENC_VINT ; 
 int /*<<< orphan*/  VENC_VMOD ; 
 int /*<<< orphan*/  VENC_VSDLY ; 
 int /*<<< orphan*/  VENC_VSPLS ; 
 int /*<<< orphan*/  VENC_VSTART ; 
 int /*<<< orphan*/  VENC_VSTARTA ; 
 int /*<<< orphan*/  VENC_VVALID ; 
 int /*<<< orphan*/  VENC_YCCCTL ; 
 scalar_t__ VPBE_VERSION_3 ; 
 int /*<<< orphan*/  debug ; 
 struct venc_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct v4l2_subdev *sd, int benable)
{
	struct venc_state *venc = FUNC0(sd);

	FUNC1(debug, 2, sd, "venc_enabledigitaloutput\n");

	if (benable) {
		FUNC2(sd, VENC_VMOD, 0);
		FUNC2(sd, VENC_CVBS, 0);
		FUNC2(sd, VENC_LCDOUT, 0);
		FUNC2(sd, VENC_HSPLS, 0);
		FUNC2(sd, VENC_HSTART, 0);
		FUNC2(sd, VENC_HVALID, 0);
		FUNC2(sd, VENC_HINT, 0);
		FUNC2(sd, VENC_VSPLS, 0);
		FUNC2(sd, VENC_VSTART, 0);
		FUNC2(sd, VENC_VVALID, 0);
		FUNC2(sd, VENC_VINT, 0);
		FUNC2(sd, VENC_YCCCTL, 0);
		FUNC2(sd, VENC_DACSEL, 0);

	} else {
		FUNC2(sd, VENC_VMOD, 0);
		/* disable VCLK output pin enable */
		FUNC2(sd, VENC_VIDCTL, 0x141);

		/* Disable output sync pins */
		FUNC2(sd, VENC_SYNCCTL, 0);

		/* Disable DCLOCK */
		FUNC2(sd, VENC_DCLKCTL, 0);
		FUNC2(sd, VENC_DRGBX1, 0x0000057C);

		/* Disable LCD output control (accepting default polarity) */
		FUNC2(sd, VENC_LCDOUT, 0);
		if (venc->venc_type != VPBE_VERSION_3)
			FUNC2(sd, VENC_CMPNT, 0x100);
		FUNC2(sd, VENC_HSPLS, 0);
		FUNC2(sd, VENC_HINT, 0);
		FUNC2(sd, VENC_HSTART, 0);
		FUNC2(sd, VENC_HVALID, 0);

		FUNC2(sd, VENC_VSPLS, 0);
		FUNC2(sd, VENC_VINT, 0);
		FUNC2(sd, VENC_VSTART, 0);
		FUNC2(sd, VENC_VVALID, 0);

		FUNC2(sd, VENC_HSDLY, 0);
		FUNC2(sd, VENC_VSDLY, 0);

		FUNC2(sd, VENC_YCCCTL, 0);
		FUNC2(sd, VENC_VSTARTA, 0);

		/* Set OSD clock and OSD Sync Adavance registers */
		FUNC2(sd, VENC_OSDCLK0, 1);
		FUNC2(sd, VENC_OSDCLK1, 2);
	}
}
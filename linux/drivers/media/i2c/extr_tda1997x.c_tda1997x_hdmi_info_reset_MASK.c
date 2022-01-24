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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int RATE_REFTIM_ENABLE ; 
 int /*<<< orphan*/  REG_HDMI_INFO_RST ; 
 int /*<<< orphan*/  REG_INT_FLG_CLR_MODE ; 
 int /*<<< orphan*/  REG_RATE_CTRL ; 
 int RESET_IF ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct v4l2_subdev *sd, u8 info_rst, bool reset_sus)
{
	u8 reg;

	/* reset infoframe engine packets */
	reg = FUNC0(sd, REG_HDMI_INFO_RST);
	FUNC1(sd, REG_HDMI_INFO_RST, info_rst);

	/* if infoframe engine has been reset clear INT_FLG_MODE */
	if (reg & RESET_IF) {
		reg = FUNC0(sd, REG_INT_FLG_CLR_MODE);
		FUNC1(sd, REG_INT_FLG_CLR_MODE, reg);
	}

	/* Disable REFTIM to restart start-up-sequencer (SUS) */
	reg = FUNC0(sd, REG_RATE_CTRL);
	reg &= ~RATE_REFTIM_ENABLE;
	if (!reset_sus)
		reg |= RATE_REFTIM_ENABLE;
	reg = FUNC1(sd, REG_RATE_CTRL, reg);

	return 0;
}
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
struct tda1997x_state {struct v4l2_subdev sd; } ;

/* Variables and functions */
 int CLK_CFG_DIS ; 
 int CLK_CFG_SEL_ACLK ; 
 int CLK_CFG_SEL_ACLK_EN ; 
 int PON_DIS ; 
 int PON_EN ; 
 int /*<<< orphan*/  REG_CLK_CFG ; 
 int /*<<< orphan*/  REG_MODE_REC_CFG1 ; 
 int /*<<< orphan*/  REG_PON_CBIAS ; 
 int /*<<< orphan*/  REG_PON_OVR_EN ; 
 int /*<<< orphan*/  REG_PON_PLL ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct tda1997x_state *state)
{
	struct v4l2_subdev *sd = &state->sd;
	u8 reg;

	/* clear HDMI mode flag in BCAPS */
	FUNC1(sd, REG_CLK_CFG, CLK_CFG_SEL_ACLK_EN | CLK_CFG_SEL_ACLK);
	FUNC1(sd, REG_PON_OVR_EN, PON_EN);
	FUNC1(sd, REG_PON_CBIAS, PON_EN);
	FUNC1(sd, REG_PON_PLL, PON_EN);

	reg = FUNC0(sd, REG_MODE_REC_CFG1);
	reg &= ~0x06;
	reg |= 0x02;
	FUNC1(sd, REG_MODE_REC_CFG1, reg);
	FUNC1(sd, REG_CLK_CFG, CLK_CFG_DIS);
	FUNC1(sd, REG_PON_OVR_EN, PON_DIS);
	reg = FUNC0(sd, REG_MODE_REC_CFG1);
	reg &= ~0x06;
	FUNC1(sd, REG_MODE_REC_CFG1, reg);
}
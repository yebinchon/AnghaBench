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
struct v4l2_subdev {int dummy; } ;
struct ov7670_win_size {unsigned char com7_bit; TYPE_2__* regs; int /*<<< orphan*/  vstop; int /*<<< orphan*/  vstart; int /*<<< orphan*/  hstop; int /*<<< orphan*/  hstart; } ;
struct ov7670_info {int mbus_config; unsigned char clkrc; TYPE_1__* fmt; scalar_t__ pclk_hb_disable; struct ov7670_win_size* wsize; } ;
struct TYPE_4__ {unsigned char value; } ;
struct TYPE_3__ {TYPE_2__* regs; } ;

/* Variables and functions */
 unsigned char COM10_HREF_REV ; 
 unsigned char COM10_PCLK_HB ; 
 unsigned char COM10_VS_NEG ; 
 int /*<<< orphan*/  REG_CLKRC ; 
 int /*<<< orphan*/  REG_COM10 ; 
 int /*<<< orphan*/  REG_COM7 ; 
 int V4L2_MBUS_HSYNC_ACTIVE_LOW ; 
 int V4L2_MBUS_VSYNC_ACTIVE_LOW ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC2 (struct v4l2_subdev*,TYPE_2__*) ; 
 struct ov7670_info* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct ov7670_info *info = FUNC3(sd);
	struct ov7670_win_size *wsize = info->wsize;
	unsigned char com7, com10 = 0;
	int ret;

	/*
	 * COM7 is a pain in the ass, it doesn't like to be read then
	 * quickly written afterward.  But we have everything we need
	 * to set it absolutely here, as long as the format-specific
	 * register sets list it first.
	 */
	com7 = info->fmt->regs[0].value;
	com7 |= wsize->com7_bit;
	ret = FUNC1(sd, REG_COM7, com7);
	if (ret)
		return ret;

	/*
	 * Configure the media bus through COM10 register
	 */
	if (info->mbus_config & V4L2_MBUS_VSYNC_ACTIVE_LOW)
		com10 |= COM10_VS_NEG;
	if (info->mbus_config & V4L2_MBUS_HSYNC_ACTIVE_LOW)
		com10 |= COM10_HREF_REV;
	if (info->pclk_hb_disable)
		com10 |= COM10_PCLK_HB;
	ret = FUNC1(sd, REG_COM10, com10);
	if (ret)
		return ret;

	/*
	 * Now write the rest of the array.  Also store start/stops
	 */
	ret = FUNC2(sd, info->fmt->regs + 1);
	if (ret)
		return ret;

	ret = FUNC0(sd, wsize->hstart, wsize->hstop, wsize->vstart,
			    wsize->vstop);
	if (ret)
		return ret;

	if (wsize->regs) {
		ret = FUNC2(sd, wsize->regs);
		if (ret)
			return ret;
	}

	/*
	 * If we're running RGB565, we must rewrite clkrc after setting
	 * the other parameters or the image looks poor.  If we're *not*
	 * doing RGB565, we must not rewrite clkrc or the image looks
	 * *really* poor.
	 *
	 * (Update) Now that we retain clkrc state, we should be able
	 * to write it unconditionally, and that will make the frame
	 * rate persistent too.
	 */
	ret = FUNC1(sd, REG_CLKRC, info->clkrc);
	if (ret)
		return ret;

	return 0;
}
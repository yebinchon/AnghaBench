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
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {unsigned int oe; int /*<<< orphan*/  regmap; scalar_t__ irq; int /*<<< orphan*/  sd; scalar_t__ lock; } ;

/* Variables and functions */
 unsigned int TVP5150_INT_A_LOCK ; 
 int /*<<< orphan*/  TVP5150_INT_ENABLE_REG_A ; 
 int /*<<< orphan*/  TVP5150_MISC_CTL ; 
 unsigned int TVP5150_MISC_CTL_CLOCK_OE ; 
 unsigned int TVP5150_MISC_CTL_SYNC_OE ; 
 unsigned int TVP5150_MISC_CTL_YCBCR_OE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct tvp5150* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  tvp5150_ev_fmt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, int enable)
{
	struct tvp5150 *decoder = FUNC1(sd);
	unsigned int mask, val = 0, int_val = 0;

	mask = TVP5150_MISC_CTL_YCBCR_OE | TVP5150_MISC_CTL_SYNC_OE |
	       TVP5150_MISC_CTL_CLOCK_OE;

	if (enable) {
		FUNC2(sd);

		/* Enable outputs if decoder is locked */
		if (decoder->irq)
			val = decoder->lock ? decoder->oe : 0;
		else
			val = decoder->oe;
		int_val = TVP5150_INT_A_LOCK;
		FUNC3(&decoder->sd, &tvp5150_ev_fmt);
	}

	FUNC0(decoder->regmap, TVP5150_MISC_CTL, mask, val);
	if (decoder->irq)
		/* Enable / Disable lock interrupt */
		FUNC0(decoder->regmap, TVP5150_INT_ENABLE_REG_A,
				   TVP5150_INT_A_LOCK, int_val);

	return 0;
}
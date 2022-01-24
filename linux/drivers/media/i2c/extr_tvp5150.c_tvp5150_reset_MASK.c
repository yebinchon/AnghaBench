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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int /*<<< orphan*/  hdl; scalar_t__ irq; struct regmap* regmap; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TVP5150_CONF_SHARED_PIN ; 
 int /*<<< orphan*/  TVP5150_INTT_CONFIG_REG_B ; 
 int /*<<< orphan*/  TVP5150_INT_CONF ; 
 int TVP5150_VDPOE ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 struct tvp5150* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  tvp5150_init_default ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, u32 val)
{
	struct tvp5150 *decoder = FUNC1(sd);
	struct regmap *map = decoder->regmap;

	/* Initializes TVP5150 to its default values */
	FUNC4(sd, tvp5150_init_default);

	if (decoder->irq) {
		/* Configure pins: FID, VSYNC, INTREQ, SCLK */
		FUNC0(map, TVP5150_CONF_SHARED_PIN, 0x0);
		/* Set interrupt polarity to active high */
		FUNC0(map, TVP5150_INT_CONF, TVP5150_VDPOE | 0x1);
		FUNC0(map, TVP5150_INTT_CONFIG_REG_B, 0x1);
	} else {
		/* Configure pins: FID, VSYNC, GPCL/VBLK, SCLK */
		FUNC0(map, TVP5150_CONF_SHARED_PIN, 0x2);
		/* Keep interrupt polarity active low */
		FUNC0(map, TVP5150_INT_CONF, TVP5150_VDPOE);
		FUNC0(map, TVP5150_INTT_CONFIG_REG_B, 0x0);
	}

	/* Initializes VDP registers */
	FUNC3(sd);

	/* Selects decoder input */
	FUNC2(sd);

	/* Initialize image preferences */
	FUNC5(&decoder->hdl);

	return 0;
}
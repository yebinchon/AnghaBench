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
struct v4l2_sliced_vbi_format {scalar_t__ service_set; scalar_t__** service_lines; } ;
struct tvp5150 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int TVP5150_FIFO_OUT_CTRL ; 
 int TVP5150_FULL_FIELD_ENA ; 
 int TVP5150_LINE_MODE_END ; 
 int TVP5150_LINE_MODE_INI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct tvp5150* FUNC1 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC2 (struct v4l2_subdev*,scalar_t__,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_format *svbi)
{
	struct tvp5150 *decoder = FUNC1(sd);
	int i;

	if (svbi->service_set != 0) {
		for (i = 0; i <= 23; i++) {
			svbi->service_lines[1][i] = 0;
			svbi->service_lines[0][i] =
				FUNC2(sd, svbi->service_lines[0][i],
						0xf0, i, 3);
		}
		/* Enables FIFO */
		FUNC0(decoder->regmap, TVP5150_FIFO_OUT_CTRL, 1);
	} else {
		/* Disables FIFO*/
		FUNC0(decoder->regmap, TVP5150_FIFO_OUT_CTRL, 0);

		/* Disable Full Field */
		FUNC0(decoder->regmap, TVP5150_FULL_FIELD_ENA, 0);

		/* Disable Line modes */
		for (i = TVP5150_LINE_MODE_INI; i <= TVP5150_LINE_MODE_END; i++)
			FUNC0(decoder->regmap, i, 0xff);
	}
	return 0;
}
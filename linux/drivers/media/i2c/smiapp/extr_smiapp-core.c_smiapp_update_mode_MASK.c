#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct TYPE_8__ {int pixel_rate_pixel_array; } ;
struct smiapp_sensor {int binning_horizontal; int binning_vertical; TYPE_6__* vblank; TYPE_5__* pixel_array; TYPE_3__* hblank; TYPE_2__ pll; TYPE_1__* src; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {int val; } ;
struct TYPE_11__ {TYPE_4__* crop; } ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_9__ {int val; } ;
struct TYPE_7__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 size_t SMIAPP_PA_PAD_SRC ; 
 int /*<<< orphan*/  SMIAPP_REG_U8_BINNING_MODE ; 
 int /*<<< orphan*/  SMIAPP_REG_U8_BINNING_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct smiapp_sensor*) ; 
 int FUNC2 (struct smiapp_sensor*) ; 
 int /*<<< orphan*/  FUNC3 (struct smiapp_sensor*) ; 
 int FUNC4 (struct smiapp_sensor*,int /*<<< orphan*/ ,unsigned int) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct smiapp_sensor *sensor)
{
	struct i2c_client *client = FUNC5(&sensor->src->sd);
	unsigned int binning_mode;
	int rval;

	/* Binning has to be set up here; it affects limits */
	if (sensor->binning_horizontal == 1 &&
	    sensor->binning_vertical == 1) {
		binning_mode = 0;
	} else {
		u8 binning_type =
			(sensor->binning_horizontal << 4)
			| sensor->binning_vertical;

		rval = FUNC4(
			sensor, SMIAPP_REG_U8_BINNING_TYPE, binning_type);
		if (rval < 0)
			return rval;

		binning_mode = 1;
	}
	rval = FUNC4(sensor, SMIAPP_REG_U8_BINNING_MODE, binning_mode);
	if (rval < 0)
		return rval;

	/* Get updated limits due to binning */
	rval = FUNC1(sensor);
	if (rval < 0)
		return rval;

	rval = FUNC2(sensor);
	if (rval < 0)
		return rval;

	/* Output from pixel array, including blanking */
	FUNC3(sensor);

	FUNC0(&client->dev, "vblank\t\t%d\n", sensor->vblank->val);
	FUNC0(&client->dev, "hblank\t\t%d\n", sensor->hblank->val);

	FUNC0(&client->dev, "real timeperframe\t100/%d\n",
		sensor->pll.pixel_rate_pixel_array /
		((sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].width
		  + sensor->hblank->val) *
		 (sensor->pixel_array->crop[SMIAPP_PA_PAD_SRC].height
		  + sensor->vblank->val) / 100));

	return 0;
}
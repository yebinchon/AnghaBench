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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct et8ek8_sensor {int version; int /*<<< orphan*/  format; int /*<<< orphan*/  current_reglist; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ET8EK8_NAME ; 
 int /*<<< orphan*/  ET8EK8_REGLIST_MODE ; 
 int /*<<< orphan*/  ET8EK8_REGLIST_POWERON ; 
 int /*<<< orphan*/  ET8EK8_REG_8BIT ; 
 int ET8EK8_REV_1 ; 
 int ET8EK8_REV_2 ; 
 int /*<<< orphan*/  REG_REVISION_NUMBER_H ; 
 int /*<<< orphan*/  REG_REVISION_NUMBER_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct et8ek8_sensor*) ; 
 int FUNC7 (struct et8ek8_sensor*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct et8ek8_sensor*) ; 
 int FUNC12 (struct et8ek8_sensor*) ; 
 int /*<<< orphan*/  meta_reglist ; 
 struct et8ek8_sensor* FUNC13 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC14 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC15(struct v4l2_subdev *subdev)
{
	struct et8ek8_sensor *sensor = FUNC13(subdev);
	struct i2c_client *client = FUNC14(subdev);
	int rval, rev_l, rev_h;

	rval = FUNC7(sensor);
	if (rval) {
		FUNC0(&client->dev, "could not power on\n");
		return rval;
	}

	rval = FUNC4(client, ET8EK8_REG_8BIT,
				   REG_REVISION_NUMBER_L, &rev_l);
	if (!rval)
		rval = FUNC4(client, ET8EK8_REG_8BIT,
					   REG_REVISION_NUMBER_H, &rev_h);
	if (rval) {
		FUNC0(&client->dev, "no et8ek8 sensor detected\n");
		goto out_poweroff;
	}

	sensor->version = (rev_h << 8) + rev_l;
	if (sensor->version != ET8EK8_REV_1 && sensor->version != ET8EK8_REV_2)
		FUNC1(&client->dev,
			 "unknown version 0x%x detected, continuing anyway\n",
			 sensor->version);

	rval = FUNC9(client, &meta_reglist);
	if (rval) {
		FUNC0(&client->dev,
			"invalid register list %s, import failed\n",
			ET8EK8_NAME);
		goto out_poweroff;
	}

	sensor->current_reglist = FUNC8(&meta_reglist,
							   ET8EK8_REGLIST_MODE);
	if (!sensor->current_reglist) {
		FUNC0(&client->dev,
			"invalid register list %s, no mode found\n",
			ET8EK8_NAME);
		rval = -ENODEV;
		goto out_poweroff;
	}

	FUNC10(sensor->current_reglist, &sensor->format);

	rval = FUNC5(client, &meta_reglist,
					     ET8EK8_REGLIST_POWERON);
	if (rval) {
		FUNC0(&client->dev,
			"invalid register list %s, no POWERON mode found\n",
			ET8EK8_NAME);
		goto out_poweroff;
	}
	rval = FUNC12(sensor); /* Needed to be able to read EEPROM */
	if (rval)
		goto out_poweroff;
	rval = FUNC3(subdev);
	if (rval)
		FUNC2(&client->dev,
			"can not read OTP (EEPROM) memory from sensor\n");
	rval = FUNC11(sensor);
	if (rval)
		goto out_poweroff;

	rval = FUNC6(sensor);
	if (rval)
		goto out_poweroff;

	return 0;

out_poweroff:
	FUNC6(sensor);

	return rval;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smiapp_sensor {int /*<<< orphan*/  mutex; TYPE_1__* src; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMIAPP_MODE_SELECT_SOFTWARE_STANDBY ; 
 int /*<<< orphan*/  SMIAPP_REG_U8_MODE_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  post_streamoff ; 
 int FUNC3 (struct smiapp_sensor*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smiapp_sensor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct smiapp_sensor *sensor)
{
	struct i2c_client *client = FUNC5(&sensor->src->sd);
	int rval;

	FUNC1(&sensor->mutex);
	rval = FUNC4(sensor, SMIAPP_REG_U8_MODE_SELECT,
			    SMIAPP_MODE_SELECT_SOFTWARE_STANDBY);
	if (rval)
		goto out;

	rval = FUNC3(sensor, post_streamoff);
	if (rval)
		FUNC0(&client->dev, "post_streamoff quirks failed\n");

out:
	FUNC2(&sensor->mutex);
	return rval;
}
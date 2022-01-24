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
struct TYPE_2__ {scalar_t__ top; scalar_t__ left; scalar_t__ height; scalar_t__ width; } ;
struct mt9m032 {TYPE_1__ crop; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9M032_COLUMN_SIZE ; 
 int /*<<< orphan*/  MT9M032_COLUMN_START ; 
 int /*<<< orphan*/  MT9M032_ROW_SIZE ; 
 int /*<<< orphan*/  MT9M032_ROW_START ; 
 int FUNC0 (struct mt9m032*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mt9m032 *sensor)
{
	struct i2c_client *client = FUNC2(&sensor->subdev);
	int ret;

	ret = FUNC1(client, MT9M032_COLUMN_SIZE,
			    sensor->crop.width - 1);
	if (!ret)
		ret = FUNC1(client, MT9M032_ROW_SIZE,
				    sensor->crop.height - 1);
	if (!ret)
		ret = FUNC1(client, MT9M032_COLUMN_START,
				    sensor->crop.left);
	if (!ret)
		ret = FUNC1(client, MT9M032_ROW_START,
				    sensor->crop.top);
	if (!ret)
		ret = FUNC0(sensor, NULL);
	return ret;
}
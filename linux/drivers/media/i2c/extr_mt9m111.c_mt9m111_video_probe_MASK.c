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
struct mt9m111 {int /*<<< orphan*/  subdev; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_VERSION ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct mt9m111*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct mt9m111* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct mt9m111 *mt9m111 = FUNC5(client);
	s32 data;
	int ret;

	ret = FUNC3(&mt9m111->subdev, 1);
	if (ret < 0)
		return ret;

	data = FUNC4(CHIP_VERSION);

	switch (data) {
	case 0x143a: /* MT9M111 or MT9M131 */
		FUNC1(&client->dev,
			"Detected a MT9M111/MT9M131 chip ID %x\n", data);
		break;
	case 0x148c: /* MT9M112 */
		FUNC1(&client->dev, "Detected a MT9M112 chip ID %x\n", data);
		break;
	default:
		FUNC0(&client->dev,
			"No MT9M111/MT9M112/MT9M131 chip detected register read %x\n",
			data);
		ret = -ENODEV;
		goto done;
	}

	ret = FUNC2(mt9m111);
	if (ret)
		goto done;

	ret = FUNC6(&mt9m111->hdl);

done:
	FUNC3(&mt9m111->subdev, 0);
	return ret;
}
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
typedef  int /*<<< orphan*/  u8 ;
struct ov2640_priv {int /*<<< orphan*/  subdev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_SEL ; 
 int /*<<< orphan*/  BANK_SEL_SENS ; 
 int ENODEV ; 
 int /*<<< orphan*/  MIDH ; 
 int /*<<< orphan*/  MIDL ; 
 int /*<<< orphan*/  PID ; 
#define  PID_OV2640 128 
 int /*<<< orphan*/  VER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct ov2640_priv* FUNC6 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct ov2640_priv *priv = FUNC6(client);
	u8 pid, ver, midh, midl;
	const char *devname;
	int ret;

	ret = FUNC5(&priv->subdev, 1);
	if (ret < 0)
		return ret;

	/*
	 * check and show product ID and manufacturer ID
	 */
	FUNC4(client, BANK_SEL, BANK_SEL_SENS);
	pid  = FUNC3(client, PID);
	ver  = FUNC3(client, VER);
	midh = FUNC3(client, MIDH);
	midl = FUNC3(client, MIDL);

	switch (FUNC0(pid, ver)) {
	case PID_OV2640:
		devname     = "ov2640";
		break;
	default:
		FUNC1(&client->dev,
			"Product ID error %x:%x\n", pid, ver);
		ret = -ENODEV;
		goto done;
	}

	FUNC2(&client->dev,
		 "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
		 devname, pid, ver, midh, midl);

done:
	FUNC5(&priv->subdev, 0);
	return ret;
}
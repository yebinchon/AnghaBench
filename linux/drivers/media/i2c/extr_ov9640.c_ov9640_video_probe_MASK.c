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
struct v4l2_subdev {int dummy; } ;
struct ov9640_priv {int revision; int /*<<< orphan*/  subdev; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OV9640_MIDH ; 
 int /*<<< orphan*/  OV9640_MIDL ; 
 int /*<<< orphan*/  OV9640_PID ; 
#define  OV9640_V2 129 
#define  OV9640_V3 128 
 int /*<<< orphan*/  OV9640_VER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct ov9640_priv* FUNC6 (struct v4l2_subdev*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC3(client);
	struct ov9640_priv *priv = FUNC6(sd);
	u8		pid, ver, midh, midl;
	const char	*devname;
	int		ret;

	ret = FUNC5(&priv->subdev, 1);
	if (ret < 0)
		return ret;

	/*
	 * check and show product ID and manufacturer ID
	 */

	ret = FUNC4(client, OV9640_PID, &pid);
	if (!ret)
		ret = FUNC4(client, OV9640_VER, &ver);
	if (!ret)
		ret = FUNC4(client, OV9640_MIDH, &midh);
	if (!ret)
		ret = FUNC4(client, OV9640_MIDL, &midl);
	if (ret)
		goto done;

	switch (FUNC0(pid, ver)) {
	case OV9640_V2:
		devname		= "ov9640";
		priv->revision	= 2;
		break;
	case OV9640_V3:
		devname		= "ov9640";
		priv->revision	= 3;
		break;
	default:
		FUNC1(&client->dev, "Product ID error %x:%x\n", pid, ver);
		ret = -ENODEV;
		goto done;
	}

	FUNC2(&client->dev, "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
		 devname, pid, ver, midh, midl);

	ret = FUNC7(&priv->hdl);

done:
	FUNC5(&priv->subdev, 0);
	return ret;
}
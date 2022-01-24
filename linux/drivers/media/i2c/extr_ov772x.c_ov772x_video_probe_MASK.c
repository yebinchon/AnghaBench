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
struct ov772x_priv {int /*<<< orphan*/  hdl; int /*<<< orphan*/  regmap; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MIDH ; 
 int /*<<< orphan*/  MIDL ; 
#define  OV7720 129 
#define  OV7725 128 
 int /*<<< orphan*/  PID ; 
 int /*<<< orphan*/  VER ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ov772x_priv*) ; 
 int FUNC4 (struct ov772x_priv*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ov772x_priv *priv)
{
	struct i2c_client  *client = FUNC7(&priv->subdev);
	int		    pid, ver, midh, midl;
	const char         *devname;
	int		    ret;

	ret = FUNC4(priv);
	if (ret < 0)
		return ret;

	/* Check and show product ID and manufacturer ID. */
	ret = FUNC5(priv->regmap, PID, &pid);
	if (ret < 0)
		return ret;
	ret = FUNC5(priv->regmap, VER, &ver);
	if (ret < 0)
		return ret;

	switch (FUNC0(pid, ver)) {
	case OV7720:
		devname     = "ov7720";
		break;
	case OV7725:
		devname     = "ov7725";
		break;
	default:
		FUNC1(&client->dev,
			"Product ID error %x:%x\n", pid, ver);
		ret = -ENODEV;
		goto done;
	}

	ret = FUNC5(priv->regmap, MIDH, &midh);
	if (ret < 0)
		return ret;
	ret = FUNC5(priv->regmap, MIDL, &midl);
	if (ret < 0)
		return ret;

	FUNC2(&client->dev,
		 "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
		 devname, pid, ver, midh, midl);

	ret = FUNC6(&priv->hdl);

done:
	FUNC3(priv);

	return ret;
}
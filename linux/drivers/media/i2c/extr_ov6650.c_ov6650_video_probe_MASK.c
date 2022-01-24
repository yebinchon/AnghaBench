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
typedef  scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct ov6650 {int /*<<< orphan*/  clk; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OV6650_PIDH ; 
 scalar_t__ OV6650_PIDL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MIDH ; 
 int /*<<< orphan*/  REG_MIDL ; 
 int /*<<< orphan*/  REG_PIDH ; 
 int /*<<< orphan*/  REG_PIDL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (struct i2c_client*) ; 
 int FUNC8 (struct v4l2_subdev*,int) ; 
 struct ov6650* FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC13 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC14(struct v4l2_subdev *sd)
{
	struct i2c_client *client = FUNC13(sd);
	struct ov6650 *priv = FUNC9(client);
	u8		pidh, pidl, midh, midl;
	int		ret;

	priv->clk = FUNC10(&client->dev, NULL);
	if (FUNC0(priv->clk)) {
		ret = FUNC1(priv->clk);
		FUNC2(&client->dev, "v4l2_clk request err: %d\n", ret);
		return ret;
	}

	ret = FUNC8(sd, 1);
	if (ret < 0)
		goto eclkput;

	FUNC4(20);

	/*
	 * check and show product ID and manufacturer ID
	 */
	ret = FUNC6(client, REG_PIDH, &pidh);
	if (!ret)
		ret = FUNC6(client, REG_PIDL, &pidl);
	if (!ret)
		ret = FUNC6(client, REG_MIDH, &midh);
	if (!ret)
		ret = FUNC6(client, REG_MIDL, &midl);

	if (ret)
		goto done;

	if ((pidh != OV6650_PIDH) || (pidl != OV6650_PIDL)) {
		FUNC2(&client->dev, "Product ID error 0x%02x:0x%02x\n",
				pidh, pidl);
		ret = -ENODEV;
		goto done;
	}

	FUNC3(&client->dev,
		"ov6650 Product ID 0x%02x:0x%02x Manufacturer ID 0x%02x:0x%02x\n",
		pidh, pidl, midh, midl);

	ret = FUNC7(client);
	if (!ret)
		ret = FUNC5(client);
	if (!ret)
		ret = FUNC12(&priv->hdl);

done:
	FUNC8(sd, 0);
	if (!ret)
		return 0;
eclkput:
	FUNC11(priv->clk);

	return ret;
}
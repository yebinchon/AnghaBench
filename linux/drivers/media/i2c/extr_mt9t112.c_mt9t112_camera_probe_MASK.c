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
struct mt9t112_priv {int num_formats; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  mt9t112_cfmts ; 
 int /*<<< orphan*/  FUNC3 (int,struct i2c_client*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct mt9t112_priv* FUNC5 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct mt9t112_priv *priv = FUNC5(client);
	const char          *devname;
	int                  chipid;
	int		     ret;

	ret = FUNC4(&priv->subdev, 1);
	if (ret < 0)
		return ret;

	/* Check and show chip ID. */
	FUNC3(chipid, client, 0x0000);

	switch (chipid) {
	case 0x2680:
		devname = "mt9t111";
		priv->num_formats = 1;
		break;
	case 0x2682:
		devname = "mt9t112";
		priv->num_formats = FUNC0(mt9t112_cfmts);
		break;
	default:
		FUNC1(&client->dev, "Product ID error %04x\n", chipid);
		ret = -ENODEV;
		goto done;
	}

	FUNC2(&client->dev, "%s chip ID %04x\n", devname, chipid);

done:
	FUNC4(&priv->subdev, 0);

	return ret;
}
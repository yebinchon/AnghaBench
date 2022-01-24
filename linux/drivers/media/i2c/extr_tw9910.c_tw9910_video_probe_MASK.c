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
struct tw9910_priv {int revision; int /*<<< orphan*/  subdev; int /*<<< orphan*/ * scale; int /*<<< orphan*/  norm; TYPE_1__* info; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;
struct TYPE_2__ {int buswidth; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ID ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct tw9910_priv* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/ * tw9910_ntsc_scales ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct tw9910_priv *priv = FUNC5(client);
	s32 id;
	int ret;

	/* TW9910 only use 8 or 16 bit bus width. */
	if (priv->info->buswidth != 16 && priv->info->buswidth != 8) {
		FUNC2(&client->dev, "bus width error\n");
		return -ENODEV;
	}

	ret = FUNC6(&priv->subdev, 1);
	if (ret < 0)
		return ret;

	/*
	 * Check and show Product ID.
	 * So far only revisions 0 and 1 have been seen.
	 */
	id = FUNC4(client, ID);
	priv->revision = FUNC1(id);
	id = FUNC0(id);

	if (id != 0x0b || priv->revision > 0x01) {
		FUNC2(&client->dev, "Product ID error %x:%x\n",
			id, priv->revision);
		ret = -ENODEV;
		goto done;
	}

	FUNC3(&client->dev, "tw9910 Product ID %0x:%0x\n",
		 id, priv->revision);

	priv->norm = V4L2_STD_NTSC;
	priv->scale = &tw9910_ntsc_scales[0];

done:
	FUNC6(&priv->subdev, 0);

	return ret;
}
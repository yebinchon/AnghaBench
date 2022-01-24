#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device_id {int driver_data; } ;
struct TYPE_6__ {struct it913x_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct it913x_platform_data {int /*<<< orphan*/  role; struct dvb_frontend* fe; int /*<<< orphan*/  regmap; } ;
struct it913x_dev {int chip_ver; int /*<<< orphan*/  role; struct dvb_frontend* fe; int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct it913x_dev* tuner_priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  it913x_tuner_ops ; 
 struct it913x_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct platform_device_id* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct it913x_dev*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct it913x_platform_data *pdata = pdev->dev.platform_data;
	struct dvb_frontend *fe = pdata->fe;
	struct it913x_dev *dev;
	const struct platform_device_id *id = FUNC5(pdev);
	int ret;
	char *chip_ver_str;

	dev = FUNC3(sizeof(struct it913x_dev), GFP_KERNEL);
	if (dev == NULL) {
		ret = -ENOMEM;
		FUNC1(&pdev->dev, "kzalloc() failed\n");
		goto err;
	}

	dev->pdev = pdev;
	dev->regmap = pdata->regmap;
	dev->fe = pdata->fe;
	dev->chip_ver = id->driver_data;
	dev->role = pdata->role;

	fe->tuner_priv = dev;
	FUNC4(&fe->ops.tuner_ops, &it913x_tuner_ops,
			sizeof(struct dvb_tuner_ops));
	FUNC6(pdev, dev);

	if (dev->chip_ver == 1)
		chip_ver_str = "AX";
	else if (dev->chip_ver == 2)
		chip_ver_str = "BX";
	else
		chip_ver_str = "??";

	FUNC2(&pdev->dev, "ITE IT913X %s successfully attached\n",
		 chip_ver_str);
	FUNC0(&pdev->dev, "chip_ver %u, role %u\n", dev->chip_ver, dev->role);
	return 0;
err:
	FUNC0(&pdev->dev, "failed %d\n", ret);
	return ret;
}
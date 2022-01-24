#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct zd1301_demod_platform_data {int dummy; } ;
struct TYPE_11__ {struct zd1301_demod_dev* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct TYPE_9__ {TYPE_2__* parent; } ;
struct TYPE_12__ {TYPE_1__ dev; int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct zd1301_demod_dev {TYPE_3__ frontend; TYPE_4__ adapter; int /*<<< orphan*/  gain; struct platform_device* pdev; } ;
struct TYPE_13__ {TYPE_2__* parent; struct zd1301_demod_platform_data* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct zd1301_demod_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct zd1301_demod_dev*) ; 
 struct zd1301_demod_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct zd1301_demod_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  zd1301_demod_gain ; 
 int /*<<< orphan*/  zd1301_demod_i2c_algorithm ; 
 int /*<<< orphan*/  zd1301_demod_ops ; 
 int FUNC10 (struct zd1301_demod_dev*,int,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct zd1301_demod_dev *dev;
	struct zd1301_demod_platform_data *pdata = pdev->dev.platform_data;
	int ret;

	FUNC0(&pdev->dev, "\n");

	if (!pdata) {
		ret = -EINVAL;
		FUNC1(&pdev->dev, "cannot proceed without platform data\n");
		goto err;
	}
	if (!pdev->dev.parent->driver) {
		ret = -EINVAL;
		FUNC0(&pdev->dev, "no parent device\n");
		goto err;
	}

	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto err;
	}

	/* Setup the state */
	dev->pdev = pdev;
	dev->gain = zd1301_demod_gain;

	/* Sleep */
	ret = FUNC10(dev, 0x6840, 0x21);
	if (ret)
		goto err_kfree;
	ret = FUNC10(dev, 0x6a38, 0x07);
	if (ret)
		goto err_kfree;

	/* Create I2C adapter */
	FUNC9(dev->adapter.name, "ZyDAS ZD1301 demod",
		sizeof(dev->adapter.name));
	dev->adapter.algo = &zd1301_demod_i2c_algorithm;
	dev->adapter.algo_data = NULL;
	dev->adapter.dev.parent = pdev->dev.parent;
	FUNC4(&dev->adapter, dev);
	ret = FUNC3(&dev->adapter);
	if (ret) {
		FUNC1(&pdev->dev, "I2C adapter add failed %d\n", ret);
		goto err_kfree;
	}

	/* Create dvb frontend */
	FUNC7(&dev->frontend.ops, &zd1301_demod_ops, sizeof(dev->frontend.ops));
	dev->frontend.demodulator_priv = dev;
	FUNC8(pdev, dev);
	FUNC2(&pdev->dev, "ZyDAS ZD1301 demod attached\n");

	return 0;
err_kfree:
	FUNC5(dev);
err:
	FUNC0(&pdev->dev, "failed=%d\n", ret);
	return ret;
}
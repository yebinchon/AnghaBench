#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_platform_data {int /*<<< orphan*/  (* probe_done ) (struct pcf50633*) ;int /*<<< orphan*/ * reg_init_data; } ;
struct pcf50633 {struct platform_device** regulator_pdev; TYPE_2__* dev; int /*<<< orphan*/  bl_pdev; int /*<<< orphan*/  adc_pdev; int /*<<< orphan*/  mbc_pdev; int /*<<< orphan*/  rtc_pdev; int /*<<< orphan*/  input_pdev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; struct pcf50633_platform_data* pdata; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PCF50633_NUM_REGULATORS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct pcf50633_platform_data* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 struct pcf50633* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct pcf50633*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pcf50633*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pcf50633*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pcf50633*,int) ; 
 int /*<<< orphan*/  pcf50633_regmap_config ; 
 int /*<<< orphan*/  pcf_attr_group ; 
 int FUNC13 (struct platform_device*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct platform_device* FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct pcf50633*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client,
				const struct i2c_device_id *ids)
{
	struct pcf50633 *pcf;
	struct platform_device *pdev;
	struct pcf50633_platform_data *pdata = FUNC3(&client->dev);
	int i, j, ret;
	int version, variant;

	if (!client->irq) {
		FUNC2(&client->dev, "Missing IRQ\n");
		return -ENOENT;
	}

	pcf = FUNC6(&client->dev, sizeof(*pcf), GFP_KERNEL);
	if (!pcf)
		return -ENOMEM;

	FUNC8(client, pcf);
	pcf->dev = &client->dev;
	pcf->pdata = pdata;

	FUNC9(&pcf->lock);

	pcf->regmap = FUNC7(client, &pcf50633_regmap_config);
	if (FUNC0(pcf->regmap)) {
		ret = FUNC1(pcf->regmap);
		FUNC2(pcf->dev, "Failed to allocate register map: %d\n", ret);
		return ret;
	}

	version = FUNC12(pcf, 0);
	variant = FUNC12(pcf, 1);
	if (version < 0 || variant < 0) {
		FUNC2(pcf->dev, "Unable to probe pcf50633\n");
		ret = -ENODEV;
		return ret;
	}

	FUNC4(pcf->dev, "Probed device version %d variant %d\n",
							version, variant);

	FUNC11(pcf, client->irq);

	/* Create sub devices */
	FUNC10(pcf, "pcf50633-input", &pcf->input_pdev);
	FUNC10(pcf, "pcf50633-rtc", &pcf->rtc_pdev);
	FUNC10(pcf, "pcf50633-mbc", &pcf->mbc_pdev);
	FUNC10(pcf, "pcf50633-adc", &pcf->adc_pdev);
	FUNC10(pcf, "pcf50633-backlight", &pcf->bl_pdev);


	for (i = 0; i < PCF50633_NUM_REGULATORS; i++) {
		pdev = FUNC15("pcf50633-regulator", i);
		if (!pdev) {
			ret = -ENOMEM;
			goto err2;
		}

		pdev->dev.parent = pcf->dev;
		ret = FUNC14(pdev, &pdata->reg_init_data[i],
					       sizeof(pdata->reg_init_data[i]));
		if (ret)
			goto err;

		ret = FUNC13(pdev);
		if (ret)
			goto err;

		pcf->regulator_pdev[i] = pdev;
	}

	ret = FUNC18(&client->dev.kobj, &pcf_attr_group);
	if (ret)
		FUNC5(pcf->dev, "error creating sysfs entries\n");

	if (pdata->probe_done)
		pdata->probe_done(pcf);

	return 0;

err:
	FUNC16(pdev);
err2:
	for (j = 0; j < i; j++)
		FUNC16(pcf->regulator_pdev[j]);

	return ret;
}
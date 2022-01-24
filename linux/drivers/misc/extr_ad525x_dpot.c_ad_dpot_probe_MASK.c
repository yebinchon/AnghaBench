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
struct ad_dpot_bus_data {int dummy; } ;
struct dpot_data {unsigned long devid; int max_pos; int rdac_mask; int feat; int wipers; int* rdac_cache; int /*<<< orphan*/  uid; struct ad_dpot_bus_data bdata; int /*<<< orphan*/  update_lock; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int DPOT_RDAC0 ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int ENOMEM ; 
 int F_CMD_INC ; 
 int F_RDACS_WONLY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_RDACS ; 
 int /*<<< orphan*/  ad525x_group_commands ; 
 int FUNC4 (struct device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct dpot_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct dpot_data*) ; 
 struct dpot_data* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC13(struct device *dev,
		struct ad_dpot_bus_data *bdata, unsigned long devid,
			    const char *name)
{

	struct dpot_data *data;
	int i, err = 0;

	data = FUNC10(sizeof(struct dpot_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC8(dev, data);
	FUNC11(&data->update_lock);

	data->bdata = *bdata;
	data->devid = devid;

	data->max_pos = 1 << FUNC1(devid);
	data->rdac_mask = data->max_pos - 1;
	data->feat = FUNC0(devid);
	data->uid = FUNC2(devid);
	data->wipers = FUNC3(devid);

	for (i = DPOT_RDAC0; i < MAX_RDACS; i++)
		if (data->wipers & (1 << i)) {
			err = FUNC4(dev, data->feat, i);
			if (err)
				goto exit_remove_files;
			/* power-up midscale */
			if (data->feat & F_RDACS_WONLY)
				data->rdac_cache[i] = data->max_pos / 2;
		}

	if (data->feat & F_CMD_INC)
		err = FUNC12(&dev->kobj, &ad525x_group_commands);

	if (err) {
		FUNC6(dev, "failed to register sysfs hooks\n");
		goto exit_free;
	}

	FUNC7(dev, "%s %d-Position Digital Potentiometer registered\n",
		 name, data->max_pos);

	return 0;

exit_remove_files:
	for (i = DPOT_RDAC0; i < MAX_RDACS; i++)
		if (data->wipers & (1 << i))
			FUNC5(dev, data->feat, i);

exit_free:
	FUNC9(data);
	FUNC8(dev, NULL);
exit:
	FUNC6(dev, "failed to create client for %s ID 0x%lX\n",
		name, devid);
	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ti_st_plat_data {int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  flow_cntrl; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  nshutdown_gpio; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; struct ti_st_plat_data* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct kim_data_s {TYPE_2__* core_data; int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  flow_cntrl; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  ldisc_installed; int /*<<< orphan*/  kim_rcvd; struct platform_device* kim_pdev; int /*<<< orphan*/  nshutdown; } ;
struct TYPE_5__ {struct kim_data_s* kim_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ST_DEVICES ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  UART_DEV_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kim_data_s*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kim_data_s*) ; 
 int /*<<< orphan*/  kim_debugfs_dir ; 
 struct kim_data_s* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_fops ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct kim_data_s*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__**) ; 
 struct platform_device** st_kim_devices ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uim_attr_grp ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  version_fops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct kim_data_s	*kim_gdata;
	struct ti_st_plat_data	*pdata = pdev->dev.platform_data;
	int err;

	if ((pdev->id != -1) && (pdev->id < MAX_ST_DEVICES)) {
		/* multiple devices could exist */
		st_kim_devices[pdev->id] = pdev;
	} else {
		/* platform's sure about existence of 1 device */
		st_kim_devices[0] = pdev;
	}

	kim_gdata = FUNC6(sizeof(struct kim_data_s), GFP_KERNEL);
	if (!kim_gdata) {
		FUNC8("no mem to allocate");
		return -ENOMEM;
	}
	FUNC7(pdev, kim_gdata);

	err = FUNC11(&kim_gdata->core_data);
	if (err != 0) {
		FUNC8(" ST core init failed");
		err = -EIO;
		goto err_core_init;
	}
	/* refer to itself */
	kim_gdata->core_data->kim_data = kim_gdata;

	/* Claim the chip enable nShutdown gpio from the system */
	kim_gdata->nshutdown = pdata->nshutdown_gpio;
	err = FUNC3(kim_gdata->nshutdown, "kim");
	if (FUNC14(err)) {
		FUNC8(" gpio %d request failed ", kim_gdata->nshutdown);
		goto err_sysfs_group;
	}

	/* Configure nShutdown GPIO as output=0 */
	err = FUNC2(kim_gdata->nshutdown, 0);
	if (FUNC14(err)) {
		FUNC8(" unable to configure gpio %d", kim_gdata->nshutdown);
		goto err_sysfs_group;
	}
	/* get reference of pdev for request_firmware
	 */
	kim_gdata->kim_pdev = pdev;
	FUNC4(&kim_gdata->kim_rcvd);
	FUNC4(&kim_gdata->ldisc_installed);

	err = FUNC13(&pdev->dev.kobj, &uim_attr_grp);
	if (err) {
		FUNC8("failed to create sysfs entries");
		goto err_sysfs_group;
	}

	/* copying platform data */
	FUNC12(kim_gdata->dev_name, pdata->dev_name, UART_DEV_NAME_LEN);
	kim_gdata->flow_cntrl = pdata->flow_cntrl;
	kim_gdata->baud_rate = pdata->baud_rate;
	FUNC9("sysfs entries created\n");

	kim_debugfs_dir = FUNC0("ti-st", NULL);

	FUNC1("version", S_IRUGO, kim_debugfs_dir,
				kim_gdata, &version_fops);
	FUNC1("protocols", S_IRUGO, kim_debugfs_dir,
				kim_gdata, &list_fops);
	return 0;

err_sysfs_group:
	FUNC10(kim_gdata->core_data);

err_core_init:
	FUNC5(kim_gdata);

	return err;
}
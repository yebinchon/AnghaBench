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
struct smsc911x_platform_config {struct smsc911x_platform_config* mac; scalar_t__ shift; } ;
struct smsc911x_data {int msg_enable; int /*<<< orphan*/ * ioaddr; int /*<<< orphan*/  mac_lock; struct smsc911x_platform_config config; int /*<<< orphan*/ * ops; struct net_device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int irq; struct smsc911x_platform_config* dev_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SMSC_CHIPNAME ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,...) ; 
 struct net_device* FUNC3 (int) ; 
 int debug ; 
 struct smsc911x_platform_config* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct smsc911x_platform_config*) ; 
 int /*<<< orphan*/  FUNC10 (struct smsc911x_platform_config*,struct smsc911x_platform_config*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,struct smsc911x_platform_config*) ; 
 struct smsc911x_data* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct resource*) ; 
 int /*<<< orphan*/  shifted_smsc911x_ops ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*) ; 
 int FUNC28 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct platform_device*) ; 
 int FUNC30 (struct net_device*) ; 
 int FUNC31 (struct platform_device*,struct net_device*) ; 
 int FUNC32 (struct smsc911x_platform_config*,int /*<<< orphan*/ *) ; 
 int FUNC33 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct smsc911x_data*,struct smsc911x_platform_config*) ; 
 int /*<<< orphan*/  FUNC35 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  standard_smsc911x_ops ; 

__attribute__((used)) static int FUNC38(struct platform_device *pdev)
{
	struct net_device *dev;
	struct smsc911x_data *pdata;
	struct smsc911x_platform_config *config = FUNC4(&pdev->dev);
	struct resource *res;
	int res_size, irq;
	int retval;

	res = FUNC16(pdev, IORESOURCE_MEM,
					   "smsc911x-memory");
	if (!res)
		res = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC22("Could not allocate resource\n");
		retval = -ENODEV;
		goto out_0;
	}
	res_size = FUNC26(res);

	irq = FUNC14(pdev, 0);
	if (irq == -EPROBE_DEFER) {
		retval = -EPROBE_DEFER;
		goto out_0;
	} else if (irq <= 0) {
		FUNC22("Could not allocate irq resource\n");
		retval = -ENODEV;
		goto out_0;
	}

	if (!FUNC25(res->start, res_size, SMSC_CHIPNAME)) {
		retval = -EBUSY;
		goto out_0;
	}

	dev = FUNC3(sizeof(struct smsc911x_data));
	if (!dev) {
		retval = -ENOMEM;
		goto out_release_io_1;
	}

	FUNC0(dev, &pdev->dev);

	pdata = FUNC12(dev);
	dev->irq = irq;
	pdata->ioaddr = FUNC7(res->start, res_size);
	if (!pdata->ioaddr) {
		retval = -ENOMEM;
		goto out_ioremap_fail;
	}

	pdata->dev = dev;
	pdata->msg_enable = ((1 << debug) - 1);

	FUNC17(pdev, dev);

	retval = FUNC33(pdev);
	if (retval)
		goto out_request_resources_fail;

	retval = FUNC28(pdev);
	if (retval)
		goto out_enable_resources_fail;

	if (pdata->ioaddr == NULL) {
		FUNC2(pdata, probe, "Error smsc911x base address invalid");
		retval = -ENOMEM;
		goto out_disable_resources;
	}

	retval = FUNC32(&pdata->config, &pdev->dev);
	if (retval && config) {
		/* copy config parameters across to pdata */
		FUNC10(&pdata->config, config, sizeof(pdata->config));
		retval = 0;
	}

	if (retval) {
		FUNC2(pdata, probe, "Error smsc911x config not found");
		goto out_disable_resources;
	}

	/* assume standard, non-shifted, access to HW registers */
	pdata->ops = &standard_smsc911x_ops;
	/* apply the right access if shifting is needed */
	if (pdata->config.shift)
		pdata->ops = &shifted_smsc911x_ops;

	FUNC19(&pdev->dev);
	FUNC20(&pdev->dev);

	retval = FUNC30(dev);
	if (retval < 0)
		goto out_disable_resources;

	FUNC13(dev);

	retval = FUNC31(pdev, dev);
	if (retval) {
		FUNC2(pdata, probe, "Error %i initialising mii", retval);
		goto out_disable_resources;
	}

	retval = FUNC23(dev);
	if (retval) {
		FUNC2(pdata, probe, "Error %i registering device", retval);
		goto out_disable_resources;
	} else {
		FUNC1(pdata, probe,
			   "Network interface: \"%s\"", dev->name);
	}

	FUNC36(&pdata->mac_lock);

	/* Check if mac address has been specified when bringing interface up */
	if (FUNC9(dev->dev_addr)) {
		FUNC34(pdata, dev->dev_addr);
		FUNC1(pdata, probe,
			   "MAC Address is specified by configuration");
	} else if (FUNC9(pdata->config.mac)) {
		FUNC10(dev->dev_addr, pdata->config.mac, ETH_ALEN);
		FUNC1(pdata, probe,
			   "MAC Address specified by platform data");
	} else {
		/* Try reading mac address from device. if EEPROM is present
		 * it will already have been set */
		FUNC35(dev);

		if (FUNC9(dev->dev_addr)) {
			/* eeprom values are valid  so use them */
			FUNC1(pdata, probe,
				   "Mac Address is read from LAN911x EEPROM");
		} else {
			/* eeprom values are invalid, generate random MAC */
			FUNC5(dev);
			FUNC34(pdata, dev->dev_addr);
			FUNC1(pdata, probe,
				   "MAC Address is set to eth_random_addr");
		}
	}

	FUNC37(&pdata->mac_lock);

	FUNC11(dev, "MAC Address: %pM\n", dev->dev_addr);

	return 0;

out_disable_resources:
	FUNC21(&pdev->dev);
	FUNC18(&pdev->dev);
	(void)FUNC27(pdev);
out_enable_resources_fail:
	FUNC29(pdev);
out_request_resources_fail:
	FUNC8(pdata->ioaddr);
out_ioremap_fail:
	FUNC6(dev);
out_release_io_1:
	FUNC24(res->start, FUNC26(res));
out_0:
	return retval;
}
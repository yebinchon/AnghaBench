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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct mantis_pci_drvdata {int /*<<< orphan*/  rc_map_name; struct mantis_hwconfig* hwconfig; } ;
struct mantis_pci {int /*<<< orphan*/  intmask_lock; int /*<<< orphan*/  rc_map_name; struct mantis_hwconfig* hwconfig; struct pci_dev* pdev; int /*<<< orphan*/  verbose; int /*<<< orphan*/  num; } ;
struct mantis_hwconfig {int /*<<< orphan*/ * irq_handler; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  STREAM_TO_HIF ; 
 int /*<<< orphan*/  devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*) ; 
 struct mantis_pci* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mantis_pci*) ; 
 int FUNC4 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC5 (struct mantis_pci*) ; 
 int FUNC6 (struct mantis_pci*) ; 
 int FUNC7 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC8 (struct mantis_pci*) ; 
 int FUNC9 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC10 (struct mantis_pci*) ; 
 int FUNC11 (struct mantis_pci*) ; 
 int /*<<< orphan*/  mantis_irq_handler ; 
 int /*<<< orphan*/  FUNC12 (struct mantis_pci*) ; 
 int FUNC13 (struct mantis_pci*) ; 
 int FUNC14 (struct mantis_pci*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev,
			    const struct pci_device_id *pci_id)
{
	struct mantis_pci_drvdata *drvdata;
	struct mantis_pci *mantis;
	struct mantis_hwconfig *config;
	int err;

	mantis = FUNC2(sizeof(*mantis), GFP_KERNEL);
	if (!mantis)
		return -ENOMEM;

	drvdata			= (void *)pci_id->driver_data;
	mantis->num		= devs;
	mantis->verbose		= verbose;
	mantis->pdev		= pdev;
	config			= drvdata->hwconfig;
	config->irq_handler	= &mantis_irq_handler;
	mantis->hwconfig	= config;
	mantis->rc_map_name	= drvdata->rc_map_name;

	FUNC16(&mantis->intmask_lock);

	err = FUNC13(mantis);
	if (err) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis PCI initialization failed <%d>", err);
		goto err_free_mantis;
	}

	err = FUNC14(mantis, STREAM_TO_HIF);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis stream control failed <%d>", err);
		goto err_pci_exit;
	}

	err = FUNC9(mantis);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis I2C initialization failed <%d>", err);
		goto err_pci_exit;
	}

	err = FUNC7(mantis);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis MAC address read failed <%d>", err);
		goto err_i2c_exit;
	}

	err = FUNC4(mantis);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis DMA initialization failed <%d>", err);
		goto err_i2c_exit;
	}

	err = FUNC6(mantis);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis DVB initialization failed <%d>", err);
		goto err_dma_exit;
	}

	err = FUNC11(mantis);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1,
			"ERROR: Mantis DVB initialization failed <%d>", err);
		goto err_dvb_exit;
	}

	err = FUNC15(mantis);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "ERROR: Mantis UART initialization failed <%d>", err);
		goto err_input_exit;
	}

	devs++;

	return 0;

err_input_exit:
	FUNC10(mantis);

err_dvb_exit:
	FUNC5(mantis);

err_dma_exit:
	FUNC3(mantis);

err_i2c_exit:
	FUNC8(mantis);

err_pci_exit:
	FUNC12(mantis);

err_free_mantis:
	FUNC1(mantis);

	return err;
}
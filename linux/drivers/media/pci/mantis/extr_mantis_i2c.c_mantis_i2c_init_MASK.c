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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int timeout; int retries; TYPE_1__ dev; int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct mantis_pci {int i2c_rc; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  i2c_wq; struct pci_dev* pdev; struct i2c_adapter adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_INT_I2CDONE ; 
 int /*<<< orphan*/  MANTIS_INT_MASK ; 
 int /*<<< orphan*/  MANTIS_INT_STAT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mantis_algo ; 
 int /*<<< orphan*/  FUNC4 (struct mantis_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC9(struct mantis_pci *mantis)
{
	u32 intstat;
	struct i2c_adapter *i2c_adapter = &mantis->adapter;
	struct pci_dev *pdev		= mantis->pdev;

	FUNC3(&mantis->i2c_wq);
	FUNC7(&mantis->i2c_lock);
	FUNC8(i2c_adapter->name, "Mantis I2C", sizeof(i2c_adapter->name));
	FUNC2(i2c_adapter, mantis);

	i2c_adapter->owner	= THIS_MODULE;
	i2c_adapter->algo	= &mantis_algo;
	i2c_adapter->algo_data	= NULL;
	i2c_adapter->timeout	= 500;
	i2c_adapter->retries	= 3;
	i2c_adapter->dev.parent	= &pdev->dev;

	mantis->i2c_rc		= FUNC1(i2c_adapter);
	if (mantis->i2c_rc < 0)
		return mantis->i2c_rc;

	FUNC0(MANTIS_DEBUG, 1, "Initializing I2C ..");

	intstat = FUNC5(MANTIS_INT_STAT);
	FUNC5(MANTIS_INT_MASK);
	FUNC6(intstat, MANTIS_INT_STAT);
	FUNC0(MANTIS_DEBUG, 1, "Disabling I2C interrupt");
	FUNC4(mantis, MANTIS_INT_I2CDONE);

	return 0;
}
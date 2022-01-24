#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct saa7146_dev {scalar_t__ revision; struct hexium* ext_priv; TYPE_1__* pci; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct hexium {TYPE_2__ i2c_adapter; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD1_INIT ; 
 int /*<<< orphan*/  DD1_STREAM_B ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HEXIUM_HV_PCI6_ORION ; 
 int /*<<< orphan*/  HEXIUM_ORION_1SVHS_3BNC ; 
 int /*<<< orphan*/  HEXIUM_ORION_4BNC ; 
 int /*<<< orphan*/  I2C_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int MASK_08 ; 
 int MASK_09 ; 
 int MASK_10 ; 
 int MASK_24 ; 
 int MASK_25 ; 
 int MASK_26 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  MC2 ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SAA7146_I2C_BUS_BIT_RATE_480 ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hexium*) ; 
 struct hexium* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7146_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC13(struct saa7146_dev *dev)
{
	struct hexium *hexium = NULL;
	union i2c_smbus_data data;
	int err = 0;

	FUNC0("\n");

	/* there are no hexium orion cards with revision 0 saa7146s */
	if (0 == dev->revision) {
		return -EFAULT;
	}

	hexium = FUNC6(sizeof(*hexium), GFP_KERNEL);
	if (!hexium)
		return -ENOMEM;

	/* enable i2c-port pins */
	FUNC11(dev, MC1, (MASK_08 | MASK_24 | MASK_10 | MASK_26));

	FUNC11(dev, DD1_INIT, 0x01000100);
	FUNC11(dev, DD1_STREAM_B, 0x00000000);
	FUNC11(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));

	FUNC12(hexium->i2c_adapter.name, "hexium orion",
		sizeof(hexium->i2c_adapter.name));
	FUNC9(dev, &hexium->i2c_adapter, SAA7146_I2C_BUS_BIT_RATE_480);
	if (FUNC2(&hexium->i2c_adapter) < 0) {
		FUNC1("cannot register i2c-device. skipping.\n");
		FUNC5(hexium);
		return -EFAULT;
	}

	/* set SAA7110 control GPIO 0 */
	FUNC10(dev, 0, SAA7146_GPIO_OUTHI);
	/*  set HWControl GPIO number 2 */
	FUNC10(dev, 2, SAA7146_GPIO_OUTHI);

	FUNC7(10);

	/* detect newer Hexium Orion cards by subsystem ids */
	if (0x17c8 == dev->pci->subsystem_vendor && 0x0101 == dev->pci->subsystem_device) {
		FUNC8("device is a Hexium Orion w/ 1 SVHS + 3 BNC inputs\n");
		/* we store the pointer in our private data field */
		dev->ext_priv = hexium;
		hexium->type = HEXIUM_ORION_1SVHS_3BNC;
		return 0;
	}

	if (0x17c8 == dev->pci->subsystem_vendor && 0x2101 == dev->pci->subsystem_device) {
		FUNC8("device is a Hexium Orion w/ 4 BNC inputs\n");
		/* we store the pointer in our private data field */
		dev->ext_priv = hexium;
		hexium->type = HEXIUM_ORION_4BNC;
		return 0;
	}

	/* check if this is an old hexium Orion card by looking at
	   a saa7110 at address 0x4e */
	err = FUNC4(&hexium->i2c_adapter, 0x4e, 0, I2C_SMBUS_READ,
			     0x00, I2C_SMBUS_BYTE_DATA, &data);
	if (err == 0) {
		FUNC8("device is a Hexium HV-PCI6/Orion (old)\n");
		/* we store the pointer in our private data field */
		dev->ext_priv = hexium;
		hexium->type = HEXIUM_HV_PCI6_ORION;
		return 0;
	}

	FUNC3(&hexium->i2c_adapter);
	FUNC5(hexium);
	return -EFAULT;
}
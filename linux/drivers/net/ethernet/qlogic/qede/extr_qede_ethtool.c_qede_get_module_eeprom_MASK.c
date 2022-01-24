#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct qede_dev {int /*<<< orphan*/  cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* read_module_eeprom ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ETH_MODULE_SFF_8079_LEN ; 
 scalar_t__ ETH_MODULE_SFF_8472_LEN ; 
 int /*<<< orphan*/  QED_I2C_DEV_ADDR_A0 ; 
 int /*<<< orphan*/  QED_I2C_DEV_ADDR_A2 ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
 struct qede_dev* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				  struct ethtool_eeprom *ee, u8 *data)
{
	struct qede_dev *edev = FUNC2(dev);
	u32 start_addr = ee->offset, size = 0;
	u8 *buf = data;
	int rc = 0;

	/* Read A0 section */
	if (ee->offset < ETH_MODULE_SFF_8079_LEN) {
		/* Limit transfer size to the A0 section boundary */
		if (ee->offset + ee->len > ETH_MODULE_SFF_8079_LEN)
			size = ETH_MODULE_SFF_8079_LEN - ee->offset;
		else
			size = ee->len;

		rc = edev->ops->common->read_module_eeprom(edev->cdev, buf,
							   QED_I2C_DEV_ADDR_A0,
							   start_addr, size);
		if (rc) {
			FUNC0(edev, "Failed reading A0 section  %d\n", rc);
			return rc;
		}

		buf += size;
		start_addr += size;
	}

	/* Read A2 section */
	if (start_addr >= ETH_MODULE_SFF_8079_LEN &&
	    start_addr < ETH_MODULE_SFF_8472_LEN) {
		size = ee->len - size;
		/* Limit transfer size to the A2 section boundary */
		if (start_addr + size > ETH_MODULE_SFF_8472_LEN)
			size = ETH_MODULE_SFF_8472_LEN - start_addr;
		start_addr -= ETH_MODULE_SFF_8079_LEN;
		rc = edev->ops->common->read_module_eeprom(edev->cdev, buf,
							   QED_I2C_DEV_ADDR_A2,
							   start_addr, size);
		if (rc) {
			FUNC1(edev, QED_MSG_DEBUG,
				   "Failed reading A2 section %d\n", rc);
			return 0;
		}
	}

	return rc;
}
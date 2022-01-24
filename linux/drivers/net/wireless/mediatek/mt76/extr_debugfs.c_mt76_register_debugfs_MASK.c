#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ data; } ;
struct mt76_dev {int /*<<< orphan*/  dev; TYPE_3__ otp; TYPE_3__ eeprom; int /*<<< orphan*/  debugfs_reg; int /*<<< orphan*/  led_pin; TYPE_2__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,struct mt76_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_regval ; 
 int /*<<< orphan*/  mt76_queues_read ; 
 int /*<<< orphan*/  mt76_read_rate_txpower ; 

struct dentry *FUNC6(struct mt76_dev *dev)
{
	struct dentry *dir;

	dir = FUNC2("mt76", dev->hw->wiphy->debugfsdir);
	if (!dir)
		return NULL;

	FUNC5("led_pin", 0600, dir, &dev->led_pin);
	FUNC4("regidx", 0600, dir, &dev->debugfs_reg);
	FUNC3("regval", 0600, dir, dev,
				   &fops_regval);
	FUNC0("eeprom", 0400, dir, &dev->eeprom);
	if (dev->otp.data)
		FUNC0("otp", 0400, dir, &dev->otp);
	FUNC1(dev->dev, "queues", dir, mt76_queues_read);
	FUNC1(dev->dev, "rate_txpower", dir,
				    mt76_read_rate_txpower);

	return dir;
}
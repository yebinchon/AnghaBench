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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dsaf_device {TYPE_2__* misc_op; TYPE_1__ ae_dev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* dsaf_reset ) (struct dsaf_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*) ; 
 int FUNC3 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct dsaf_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dsaf_device*,int) ; 

__attribute__((used)) static int FUNC9(struct dsaf_device *dsaf_dev)
{
	int ret;

	FUNC0(dsaf_dev->dev,
		"hns_dsaf_init_hw begin %s !\n", dsaf_dev->ae_dev.name);

	dsaf_dev->misc_op->dsaf_reset(dsaf_dev, 0);
	FUNC6(10);
	dsaf_dev->misc_op->dsaf_reset(dsaf_dev, 1);

	FUNC1(dsaf_dev);

	/*init XBAR_INODE*/
	FUNC2(dsaf_dev);

	/*init SBM*/
	ret = FUNC3(dsaf_dev);
	if (ret)
		return ret;

	/*init TBL*/
	FUNC4(dsaf_dev);

	/*init VOQ*/
	FUNC5(dsaf_dev);

	return 0;
}
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
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  spec_minor; int /*<<< orphan*/  spec_major; int /*<<< orphan*/  version; } ;
struct kempld_device_data {TYPE_2__* dev; TYPE_1__ info; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_index; int /*<<< orphan*/  io_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENODEV ; 
 int KEMPLD_MUTEX_KEY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*) ; 
 int FUNC5 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pld_attr_group ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct kempld_device_data *pld)
{
	u8 index_reg;
	int ret;

	FUNC6(&pld->lock);

	/* Check for empty IO space */
	index_reg = FUNC1(pld->io_index);
	if (index_reg == 0xff && FUNC1(pld->io_data) == 0xff) {
		FUNC7(&pld->lock);
		return -ENODEV;
	}

	/* Release hardware mutex if acquired */
	if (!(index_reg & KEMPLD_MUTEX_KEY)) {
		FUNC2(KEMPLD_MUTEX_KEY, pld->io_index);
		/* PXT and COMe-cPC2 boards may require a second release */
		FUNC2(KEMPLD_MUTEX_KEY, pld->io_index);
	}

	FUNC7(&pld->lock);

	ret = FUNC3(pld);
	if (ret)
		return ret;

	FUNC0(pld->dev, "Found Kontron PLD - %s (%s), spec %d.%d\n",
		 pld->info.version, FUNC4(pld),
		 pld->info.spec_major, pld->info.spec_minor);

	ret = FUNC8(&pld->dev->kobj, &pld_attr_group);
	if (ret)
		return ret;

	ret = FUNC5(pld);
	if (ret)
		FUNC9(&pld->dev->kobj, &pld_attr_group);

	return ret;
}
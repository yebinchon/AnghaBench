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
struct ddb {int /*<<< orphan*/  dev; TYPE_3__* link; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_2__* info; int /*<<< orphan*/  flash_mutex; TYPE_1__ lnb; } ;
struct TYPE_5__ {scalar_t__ fan_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_DIRECTION ; 
 int /*<<< orphan*/  GPIO_OUTPUT ; 
 scalar_t__ FUNC0 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*) ; 
 scalar_t__ FUNC3 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ddb*) ; 
 scalar_t__ FUNC6 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC7 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC8 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC9 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC10 (struct ddb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ no_init ; 

int FUNC14(struct ddb *dev)
{
	FUNC13(&dev->link[0].lnb.lock);
	FUNC13(&dev->link[0].flash_mutex);
	if (no_init) {
		FUNC2(dev);
		return 0;
	}

	FUNC5(dev);

	if (FUNC3(dev) < 0)
		goto fail1;
	FUNC8(dev);
	if (FUNC0(dev) < 0) {
		FUNC12(dev->dev, "Could not allocate buffer memory\n");
		goto fail2;
	}
	if (FUNC6(dev) < 0)
		goto fail3;

	FUNC2(dev);

	if (dev->link[0].info->fan_num)	{
		FUNC10(dev, 1, GPIO_DIRECTION);
		FUNC10(dev, 1, GPIO_OUTPUT);
	}
	return 0;

fail3:
	FUNC11(dev->dev, "fail3\n");
	FUNC7(dev);
	FUNC1(dev);
fail2:
	FUNC11(dev->dev, "fail2\n");
	FUNC9(dev);
	FUNC4(dev);
fail1:
	FUNC11(dev->dev, "fail1\n");
	return -1;
}
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
struct mei_device {int minor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEI_MAX_DEVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct mei_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mei_idr ; 
 int /*<<< orphan*/  mei_minor_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mei_device *dev)
{
	int ret;

	FUNC2(&mei_minor_lock);
	ret = FUNC1(&mei_idr, dev, 0, MEI_MAX_DEVS, GFP_KERNEL);
	if (ret >= 0)
		dev->minor = ret;
	else if (ret == -ENOSPC)
		FUNC0(dev->dev, "too many mei devices\n");

	FUNC3(&mei_minor_lock);
	return ret;
}
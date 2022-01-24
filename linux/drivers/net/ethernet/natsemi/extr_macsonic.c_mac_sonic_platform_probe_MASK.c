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
struct sonic_local {int /*<<< orphan*/ * device; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 struct sonic_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *dev;
	struct sonic_local *lp;
	int err;

	dev = FUNC1(sizeof(struct sonic_local));
	if (!dev)
		return -ENOMEM;

	lp = FUNC4(dev);
	lp->device = &pdev->dev;
	FUNC0(dev, &pdev->dev);
	FUNC5(pdev, dev);

	err = FUNC3(dev);
	if (err)
		goto out;

	FUNC7(dev);

	err = FUNC6(dev);
	if (err)
		goto out;

	return 0;

out:
	FUNC2(dev);

	return err;
}
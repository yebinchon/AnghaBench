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
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;
struct hp100_private {int dummy; } ;
struct eisa_device {scalar_t__ base_addr; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HP100_BUS_EISA ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eisa_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *gendev)
{
	struct net_device *dev = FUNC1(sizeof(struct hp100_private));
	struct eisa_device *edev = FUNC6(gendev);
	int err;

	if (!dev)
		return -ENOMEM;

	FUNC0(dev, &edev->dev);

	err = FUNC4(dev, edev->base_addr + 0xC38, HP100_BUS_EISA, NULL);
	if (err)
		goto out1;

#ifdef HP100_DEBUG
	printk("hp100: %s: EISA adapter found at 0x%x\n", dev->name,
	       dev->base_addr);
#endif
	FUNC2(gendev, dev);
	return 0;
 out1:
	FUNC3(dev);
	return err;
}
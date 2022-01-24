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
struct sta2x11_mfd {int /*<<< orphan*/ * regmap; int /*<<< orphan*/ * regs; int /*<<< orphan*/  lock; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct regmap_config {int /*<<< orphan*/  cache_type; int /*<<< orphan*/ * lock_arg; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
typedef  enum sta2x11_mfd_plat_dev { ____Placeholder_sta2x11_mfd_plat_dev } sta2x11_mfd_plat_dev ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGCACHE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_dev** FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct regmap_config*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 struct sta2x11_mfd* FUNC9 (struct pci_dev*) ; 
 char** sta2x11_mfd_names ; 
 struct regmap_config** sta2x11_mfd_regmap_configs ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev,
				      enum sta2x11_mfd_plat_dev index)
{
	struct pci_dev **pdev;
	struct sta2x11_mfd *mfd;
	struct resource *res;
	const char *name = sta2x11_mfd_names[index];
	struct regmap_config *regmap_config = sta2x11_mfd_regmap_configs[index];

	pdev = FUNC2(&dev->dev);
	mfd = FUNC9(*pdev);
	if (!mfd)
		return -ENODEV;
	if (!regmap_config)
		return -ENODEV;

	res = FUNC5(dev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENOMEM;

	if (!FUNC7(res->start, FUNC8(res), name))
		return -EBUSY;

	mfd->regs[index] = FUNC4(res->start, FUNC8(res));
	if (!mfd->regs[index]) {
		FUNC6(res->start, FUNC8(res));
		return -ENOMEM;
	}
	regmap_config->lock_arg = &mfd->lock;
	/*
	   No caching, registers could be reached both via regmap and via
	   void __iomem *
	*/
	regmap_config->cache_type = REGCACHE_NONE;
	mfd->regmap[index] = FUNC3(&dev->dev, mfd->regs[index],
						   regmap_config);
	FUNC1(FUNC0(mfd->regmap[index]));

	return 0;
}
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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ei_device {int /*<<< orphan*/  mem; } ;
struct ax_device {int /*<<< orphan*/  map2; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ei_device* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 struct ax_device* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct ei_device *ei_local = FUNC2(dev);
	struct ax_device *ax = FUNC8(dev);
	struct resource *mem;

	FUNC9(dev);

	FUNC1(ei_local->mem);
	mem = FUNC4(pdev, IORESOURCE_MEM, 0);
	FUNC6(mem->start, FUNC7(mem));

	if (ax->map2) {
		FUNC1(ax->map2);
		mem = FUNC4(pdev, IORESOURCE_MEM, 1);
		FUNC6(mem->start, FUNC7(mem));
	}

	FUNC5(pdev, NULL);
	FUNC0(dev);

	return 0;
}
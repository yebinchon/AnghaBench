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
struct smsc911x_data {int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  mii_bus; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct smsc911x_data* FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct net_device *dev;
	struct smsc911x_data *pdata;
	struct resource *res;

	dev = FUNC7(pdev);
	FUNC0(!dev);
	pdata = FUNC6(dev);
	FUNC0(!pdata);
	FUNC0(!pdata->ioaddr);

	FUNC1(pdata, ifdown, "Stopping driver");

	FUNC16(dev);

	FUNC5(pdata->mii_bus);
	FUNC4(pdata->mii_bus);

	res = FUNC9(pdev, IORESOURCE_MEM,
					   "smsc911x-memory");
	if (!res)
		res = FUNC8(pdev, IORESOURCE_MEM, 0);

	FUNC12(res->start, FUNC13(res));

	FUNC3(pdata->ioaddr);

	(void)FUNC14(pdev);
	FUNC15(pdev);

	FUNC2(dev);

	FUNC11(&pdev->dev);
	FUNC10(&pdev->dev);

	return 0;
}
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
struct smsc911x_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  supplies; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 struct smsc911x_data* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC5(pdev);
	struct smsc911x_data *pdata = FUNC4(ndev);
	int ret = 0;

	ret = FUNC6(FUNC0(pdata->supplies),
			pdata->supplies);
	if (ret)
		FUNC3(ndev, "failed to enable regulators %d\n",
				ret);

	if (!FUNC1(pdata->clk)) {
		ret = FUNC2(pdata->clk);
		if (ret < 0)
			FUNC3(ndev, "failed to enable clock %d\n", ret);
	}

	return ret;
}
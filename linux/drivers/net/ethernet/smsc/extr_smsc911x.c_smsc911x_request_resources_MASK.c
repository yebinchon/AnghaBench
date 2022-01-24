#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smsc911x_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  reset_gpiod; TYPE_1__* supplies; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 struct smsc911x_data* FUNC7 (struct net_device*) ; 
 struct net_device* FUNC8 (struct platform_device*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC8(pdev);
	struct smsc911x_data *pdata = FUNC7(ndev);
	int ret = 0;

	/* Request regulators */
	pdata->supplies[0].supply = "vdd33a";
	pdata->supplies[1].supply = "vddvario";
	ret = FUNC9(&pdev->dev,
			FUNC0(pdata->supplies),
			pdata->supplies);
	if (ret) {
		/*
		 * Retry on deferrals, else just report the error
		 * and try to continue.
		 */
		if (ret == -EPROBE_DEFER)
			return ret;
		FUNC6(ndev, "couldn't get regulators %d\n",
				ret);
	}

	/* Request optional RESET GPIO */
	pdata->reset_gpiod = FUNC5(&pdev->dev,
						     "reset",
						     GPIOD_OUT_LOW);

	/* Request clock */
	pdata->clk = FUNC3(&pdev->dev, NULL);
	if (FUNC1(pdata->clk))
		FUNC4(&pdev->dev, "couldn't get clock %li\n",
			FUNC2(pdata->clk));

	return ret;
}
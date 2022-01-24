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
struct qcom_ethqos {int /*<<< orphan*/  rgmii_clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qcom_ethqos* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct qcom_ethqos *ethqos;
	int ret;

	ethqos = FUNC1(&pdev->dev);
	if (!ethqos)
		return -ENODEV;

	ret = FUNC2(pdev);
	FUNC0(ethqos->rgmii_clk);

	return ret;
}
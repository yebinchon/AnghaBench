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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct cqspi_flash_pdata {int /*<<< orphan*/  clk_rate; int /*<<< orphan*/  tslch_ns; int /*<<< orphan*/  tchsh_ns; int /*<<< orphan*/  tsd2d_ns; int /*<<< orphan*/  tshsl_ns; int /*<<< orphan*/  read_delay; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev,
				    struct cqspi_flash_pdata *f_pdata,
				    struct device_node *np)
{
	if (FUNC1(np, "cdns,read-delay", &f_pdata->read_delay)) {
		FUNC0(&pdev->dev, "couldn't determine read-delay\n");
		return -ENXIO;
	}

	if (FUNC1(np, "cdns,tshsl-ns", &f_pdata->tshsl_ns)) {
		FUNC0(&pdev->dev, "couldn't determine tshsl-ns\n");
		return -ENXIO;
	}

	if (FUNC1(np, "cdns,tsd2d-ns", &f_pdata->tsd2d_ns)) {
		FUNC0(&pdev->dev, "couldn't determine tsd2d-ns\n");
		return -ENXIO;
	}

	if (FUNC1(np, "cdns,tchsh-ns", &f_pdata->tchsh_ns)) {
		FUNC0(&pdev->dev, "couldn't determine tchsh-ns\n");
		return -ENXIO;
	}

	if (FUNC1(np, "cdns,tslch-ns", &f_pdata->tslch_ns)) {
		FUNC0(&pdev->dev, "couldn't determine tslch-ns\n");
		return -ENXIO;
	}

	if (FUNC1(np, "spi-max-frequency", &f_pdata->clk_rate)) {
		FUNC0(&pdev->dev, "couldn't determine spi-max-frequency\n");
		return -ENXIO;
	}

	return 0;
}
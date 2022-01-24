#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xgene_enet_pdata {TYPE_1__* pdev; int /*<<< orphan*/  clk; } ;
struct device {scalar_t__ of_node; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static int FUNC9(struct xgene_enet_pdata *pdata)
{
	struct device *dev = &pdata->pdev->dev;

	if (!FUNC8(pdata))
		return -ENODEV;

	if (dev->of_node) {
		FUNC4(pdata->clk);
		FUNC5(5);
		FUNC3(pdata->clk);
		FUNC5(5);
		FUNC4(pdata->clk);
		FUNC5(5);
	} else {
#ifdef CONFIG_ACPI
		acpi_status status;

		status = acpi_evaluate_object(ACPI_HANDLE(&pdata->pdev->dev),
					      "_RST", NULL, NULL);
		if (ACPI_FAILURE(status)) {
			acpi_evaluate_object(ACPI_HANDLE(&pdata->pdev->dev),
					     "_INI", NULL, NULL);
		}
#endif
	}

	FUNC7(pdata);
	FUNC6(pdata);

	return 0;
}
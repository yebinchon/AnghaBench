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
struct xgene_mdio_pdata {int /*<<< orphan*/  clk; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct xgene_mdio_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_mdio_pdata*) ; 

__attribute__((used)) static int FUNC7(struct xgene_mdio_pdata *pdata)
{
	int ret;

	if (pdata->dev->of_node) {
		FUNC3(pdata->clk);
		FUNC4(5);
		FUNC2(pdata->clk);
		FUNC4(5);
		FUNC3(pdata->clk);
		FUNC4(5);
	} else {
#ifdef CONFIG_ACPI
		acpi_evaluate_object(ACPI_HANDLE(pdata->dev),
				     "_RST", NULL, NULL);
#endif
	}

	ret = FUNC5(pdata);
	if (ret) {
		if (pdata->dev->of_node)
			FUNC2(pdata->clk);
		return ret;
	}
	FUNC6(pdata);

	return 0;
}
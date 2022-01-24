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
struct xgene_enet_pdata {scalar_t__ enet_id; int /*<<< orphan*/  port_id; TYPE_1__* pdev; int /*<<< orphan*/  clk; scalar_t__ mdio_driver; } ;
struct device {scalar_t__ of_node; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGMII_EN ; 
 int /*<<< orphan*/  XGENET_CONFIG_REG_ADDR ; 
 scalar_t__ XGENE_ENET2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static int FUNC11(struct xgene_enet_pdata *p)
{
	struct device *dev = &p->pdev->dev;

	if (!FUNC10(p))
		return -ENODEV;

	if (p->mdio_driver && p->enet_id == XGENE_ENET2) {
		FUNC7(p);
		return 0;
	}

	if (p->enet_id == XGENE_ENET2)
		FUNC9(p, XGENET_CONFIG_REG_ADDR, SGMII_EN);

	if (dev->of_node) {
		if (!FUNC2(p->clk)) {
			FUNC5(p->clk);
			FUNC6(5);
			FUNC4(p->clk);
			FUNC6(5);
			FUNC5(p->clk);
			FUNC6(5);
		}
	} else {
#ifdef CONFIG_ACPI
		acpi_status status;

		status = acpi_evaluate_object(ACPI_HANDLE(&p->pdev->dev),
					      "_RST", NULL, NULL);
		if (ACPI_FAILURE(status)) {
			acpi_evaluate_object(ACPI_HANDLE(&p->pdev->dev),
					     "_INI", NULL, NULL);
		}
#endif
	}

	if (!p->port_id) {
		FUNC8(p);
		FUNC7(p);
	}

	return 0;
}
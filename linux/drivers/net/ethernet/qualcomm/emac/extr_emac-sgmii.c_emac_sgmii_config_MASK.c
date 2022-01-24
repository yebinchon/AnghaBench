#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sgmii_ops {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct emac_sgmii {int irq; void* base; void* digital; struct sgmii_ops* sgmii_ops; } ;
struct emac_adapter {struct emac_sgmii phy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct device* FUNC2 (TYPE_1__*,struct sgmii_ops**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  emac_sgmii_acpi_match ; 
 int /*<<< orphan*/  emac_sgmii_dt_match ; 
 int FUNC3 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct emac_adapter*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 struct platform_device* FUNC8 (struct device_node*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 struct platform_device* FUNC16 (struct device*) ; 

int FUNC17(struct platform_device *pdev, struct emac_adapter *adpt)
{
	struct platform_device *sgmii_pdev = NULL;
	struct emac_sgmii *phy = &adpt->phy;
	struct resource *res;
	int ret;

	if (FUNC5(&pdev->dev)) {
		struct device *dev;

		dev = FUNC2(&pdev->dev, &phy->sgmii_ops,
					emac_sgmii_acpi_match);

		if (!dev) {
			FUNC1(&pdev->dev, "cannot find internal phy node\n");
			return 0;
		}

		sgmii_pdev = FUNC16(dev);
	} else {
		const struct of_device_id *match;
		struct device_node *np;

		np = FUNC11(pdev->dev.of_node, "internal-phy", 0);
		if (!np) {
			FUNC0(&pdev->dev, "missing internal-phy property\n");
			return -ENODEV;
		}

		sgmii_pdev = FUNC8(np);
		FUNC10(np);
		if (!sgmii_pdev) {
			FUNC0(&pdev->dev, "invalid internal-phy property\n");
			return -ENODEV;
		}

		match = FUNC9(emac_sgmii_dt_match, &sgmii_pdev->dev);
		if (!match) {
			FUNC0(&pdev->dev, "unrecognized internal phy node\n");
			ret = -ENODEV;
			goto error_put_device;
		}

		phy->sgmii_ops = (struct sgmii_ops *)match->data;
	}

	/* Base address is the first address */
	res = FUNC13(sgmii_pdev, IORESOURCE_MEM, 0);
	if (!res) {
		ret = -EINVAL;
		goto error_put_device;
	}

	phy->base = FUNC6(res->start, FUNC15(res));
	if (!phy->base) {
		ret = -ENOMEM;
		goto error_put_device;
	}

	/* v2 SGMII has a per-lane digital digital, so parse it if it exists */
	res = FUNC13(sgmii_pdev, IORESOURCE_MEM, 1);
	if (res) {
		phy->digital = FUNC6(res->start, FUNC15(res));
		if (!phy->digital) {
			ret = -ENOMEM;
			goto error_unmap_base;
		}
	}

	ret = FUNC3(adpt);
	if (ret)
		goto error;

	FUNC4(adpt);

	ret = FUNC12(sgmii_pdev, 0);
	if (ret > 0)
		phy->irq = ret;

	/* We've remapped the addresses, so we don't need the device any
	 * more.  of_find_device_by_node() says we should release it.
	 */
	FUNC14(&sgmii_pdev->dev);

	return 0;

error:
	if (phy->digital)
		FUNC7(phy->digital);
error_unmap_base:
	FUNC7(phy->base);
error_put_device:
	FUNC14(&sgmii_pdev->dev);

	return ret;
}
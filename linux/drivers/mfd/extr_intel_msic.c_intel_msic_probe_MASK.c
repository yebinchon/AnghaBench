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
typedef  int /*<<< orphan*/  u8 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_msic_platform_data {int dummy; } ;
struct intel_msic {scalar_t__ vendor; int /*<<< orphan*/  version; int /*<<< orphan*/  irq_base; struct platform_device* pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTEL_MSIC_ID0 ; 
 int /*<<< orphan*/  INTEL_MSIC_ID1 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 struct intel_msic_platform_data* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 struct intel_msic* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct intel_msic*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct intel_msic*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct intel_msic_platform_data *pdata = FUNC7(&pdev->dev);
	struct intel_msic *msic;
	struct resource *res;
	u8 id0, id1;
	int ret;

	if (!pdata) {
		FUNC6(&pdev->dev, "no platform data passed\n");
		return -EINVAL;
	}

	/* First validate that we have an MSIC in place */
	ret = FUNC12(INTEL_MSIC_ID0, &id0);
	if (ret) {
		FUNC6(&pdev->dev, "failed to identify the MSIC chip (ID0)\n");
		return -ENXIO;
	}

	ret = FUNC12(INTEL_MSIC_ID1, &id1);
	if (ret) {
		FUNC6(&pdev->dev, "failed to identify the MSIC chip (ID1)\n");
		return -ENXIO;
	}

	if (FUNC3(id0) != FUNC3(id1)) {
		FUNC6(&pdev->dev, "invalid vendor ID: %x, %x\n", id0, id1);
		return -ENXIO;
	}

	msic = FUNC10(&pdev->dev, sizeof(*msic), GFP_KERNEL);
	if (!msic)
		return -ENOMEM;

	msic->vendor = FUNC3(id0);
	msic->version = FUNC4(id0);
	msic->pdev = pdev;

	/*
	 * Map in the MSIC interrupt tree area in SRAM. This is exposed to
	 * the clients via intel_msic_irq_read().
	 */
	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	msic->irq_base = FUNC9(&pdev->dev, res);
	if (FUNC0(msic->irq_base))
		return FUNC5(msic->irq_base);

	FUNC14(pdev, msic);

	ret = FUNC11(msic);
	if (ret) {
		FUNC6(&pdev->dev, "failed to initialize MSIC devices\n");
		return ret;
	}

	FUNC8(&pdev->dev, "Intel MSIC version %c%d (vendor %#x)\n",
		 FUNC1(msic->version), FUNC2(msic->version),
		 msic->vendor);

	return 0;
}
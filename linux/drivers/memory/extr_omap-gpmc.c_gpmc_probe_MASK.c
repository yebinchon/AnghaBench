#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gpmc_device {TYPE_1__* dev; scalar_t__ nirqs; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPMC_CS_NUM ; 
 int GPMC_HAS_MUX_AAD ; 
 int GPMC_HAS_WR_ACCESS ; 
 int GPMC_HAS_WR_DATA_MUX_BUS ; 
 scalar_t__ GPMC_NR_NAND_IRQS ; 
 scalar_t__ GPMC_NR_WAITPINS ; 
 int /*<<< orphan*/  GPMC_REVISION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct resource*) ; 
 struct gpmc_device* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpmc_base ; 
 int gpmc_capability ; 
 int /*<<< orphan*/  gpmc_cs_num ; 
 int FUNC10 (struct gpmc_device*) ; 
 int /*<<< orphan*/  gpmc_l3_clk ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ gpmc_nr_waitpins ; 
 int FUNC13 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct gpmc_device*) ; 
 int /*<<< orphan*/  mem_size ; 
 int /*<<< orphan*/  phys_base ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct gpmc_device*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (struct resource*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	int rc;
	u32 l;
	struct resource *res;
	struct gpmc_device *gpmc;

	gpmc = FUNC9(&pdev->dev, sizeof(*gpmc), GFP_KERNEL);
	if (!gpmc)
		return -ENOMEM;

	gpmc->dev = &pdev->dev;
	FUNC18(pdev, gpmc);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	if (res == NULL)
		return -ENOENT;

	phys_base = res->start;
	mem_size = FUNC23(res);

	gpmc_base = FUNC8(&pdev->dev, res);
	if (FUNC2(gpmc_base))
		return FUNC3(gpmc_base);

	res = FUNC17(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC5(&pdev->dev, "Failed to get resource: irq\n");
		return -ENOENT;
	}

	gpmc->irq = res->start;

	gpmc_l3_clk = FUNC7(&pdev->dev, "fck");
	if (FUNC2(gpmc_l3_clk)) {
		FUNC5(&pdev->dev, "Failed to get GPMC fck\n");
		return FUNC3(gpmc_l3_clk);
	}

	if (!FUNC4(gpmc_l3_clk)) {
		FUNC5(&pdev->dev, "Invalid GPMC fck clock rate\n");
		return -EINVAL;
	}

	if (pdev->dev.of_node) {
		rc = FUNC13(pdev);
		if (rc)
			return rc;
	} else {
		gpmc_cs_num = GPMC_CS_NUM;
		gpmc_nr_waitpins = GPMC_NR_WAITPINS;
	}

	FUNC20(&pdev->dev);
	FUNC21(&pdev->dev);

	l = FUNC15(GPMC_REVISION);

	/*
	 * FIXME: Once device-tree migration is complete the below flags
	 * should be populated based upon the device-tree compatible
	 * string. For now just use the IP revision. OMAP3+ devices have
	 * the wr_access and wr_data_mux_bus register fields. OMAP4+
	 * devices support the addr-addr-data multiplex protocol.
	 *
	 * GPMC IP revisions:
	 * - OMAP24xx			= 2.0
	 * - OMAP3xxx			= 5.0
	 * - OMAP44xx/54xx/AM335x	= 6.0
	 */
	if (FUNC0(l) > 0x4)
		gpmc_capability = GPMC_HAS_WR_ACCESS | GPMC_HAS_WR_DATA_MUX_BUS;
	if (FUNC0(l) > 0x5)
		gpmc_capability |= GPMC_HAS_MUX_AAD;
	FUNC6(gpmc->dev, "GPMC revision %d.%d\n", FUNC0(l),
		 FUNC1(l));

	FUNC12();
	rc = FUNC10(gpmc);
	if (rc)
		goto gpio_init_failed;

	gpmc->nirqs = GPMC_NR_NAND_IRQS + gpmc_nr_waitpins;
	rc = FUNC16(gpmc);
	if (rc) {
		FUNC5(gpmc->dev, "gpmc_setup_irq failed\n");
		goto gpio_init_failed;
	}

	FUNC14(pdev);

	return 0;

gpio_init_failed:
	FUNC11();
	FUNC22(&pdev->dev);
	FUNC19(&pdev->dev);

	return rc;
}
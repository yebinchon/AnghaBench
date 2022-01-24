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
struct resource {scalar_t__ start; } ;
struct reset_control {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct device_node {int dummy; } ;
struct cqspi_st {int wr_delay; int current_cs; struct reset_control* clk; scalar_t__ sclk; int /*<<< orphan*/  master_ref_clk_hz; int /*<<< orphan*/  transfer_complete; int /*<<< orphan*/  ahb_size; scalar_t__ mmap_phys_base; struct reset_control* ahb_base; struct reset_control* iobase; struct platform_device* pdev; int /*<<< orphan*/  bus_mutex; } ;
struct cqspi_driver_platdata {int quirks; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int CQSPI_NEEDS_WR_DELAY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC4 (struct reset_control*) ; 
 int FUNC5 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct cqspi_st*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cqspi_st*) ; 
 int /*<<< orphan*/  cqspi_irq_handler ; 
 int FUNC8 (struct platform_device*) ; 
 int FUNC9 (struct cqspi_st*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct cqspi_st*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,...) ; 
 struct reset_control* FUNC12 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC13 (struct device*,struct resource*) ; 
 struct cqspi_st* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cqspi_st*) ; 
 struct reset_control* FUNC16 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct cqspi_driver_platdata* FUNC19 (struct device*) ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct cqspi_st*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC29 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC30 (struct resource*) ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct cqspi_st *cqspi;
	struct resource *res;
	struct resource *res_ahb;
	struct reset_control *rstc, *rstc_ocp;
	const struct cqspi_driver_platdata *ddata;
	int ret;
	int irq;

	cqspi = FUNC14(dev, sizeof(*cqspi), GFP_KERNEL);
	if (!cqspi)
		return -ENOMEM;

	FUNC18(&cqspi->bus_mutex);
	cqspi->pdev = pdev;
	FUNC22(pdev, cqspi);

	/* Obtain configuration from OF. */
	ret = FUNC8(pdev);
	if (ret) {
		FUNC11(dev, "Cannot get mandatory OF data.\n");
		return -ENODEV;
	}

	/* Obtain QSPI clock. */
	cqspi->clk = FUNC12(dev, NULL);
	if (FUNC1(cqspi->clk)) {
		FUNC11(dev, "Cannot claim QSPI clock.\n");
		return FUNC2(cqspi->clk);
	}

	/* Obtain and remap controller address. */
	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	cqspi->iobase = FUNC13(dev, res);
	if (FUNC1(cqspi->iobase)) {
		FUNC11(dev, "Cannot remap controller address.\n");
		return FUNC2(cqspi->iobase);
	}

	/* Obtain and remap AHB address. */
	res_ahb = FUNC21(pdev, IORESOURCE_MEM, 1);
	cqspi->ahb_base = FUNC13(dev, res_ahb);
	if (FUNC1(cqspi->ahb_base)) {
		FUNC11(dev, "Cannot remap AHB address.\n");
		return FUNC2(cqspi->ahb_base);
	}
	cqspi->mmap_phys_base = (dma_addr_t)res_ahb->start;
	cqspi->ahb_size = FUNC30(res_ahb);

	FUNC17(&cqspi->transfer_complete);

	/* Obtain IRQ line. */
	irq = FUNC20(pdev, 0);
	if (irq < 0) {
		FUNC11(dev, "Cannot obtain IRQ.\n");
		return -ENXIO;
	}

	FUNC24(dev);
	ret = FUNC25(dev);
	if (ret < 0) {
		FUNC26(dev);
		return ret;
	}

	ret = FUNC5(cqspi->clk);
	if (ret) {
		FUNC11(dev, "Cannot enable QSPI clock.\n");
		goto probe_clk_failed;
	}

	/* Obtain QSPI reset control */
	rstc = FUNC16(dev, "qspi");
	if (FUNC1(rstc)) {
		FUNC11(dev, "Cannot get QSPI reset.\n");
		return FUNC2(rstc);
	}

	rstc_ocp = FUNC16(dev, "qspi-ocp");
	if (FUNC1(rstc_ocp)) {
		FUNC11(dev, "Cannot get QSPI OCP reset.\n");
		return FUNC2(rstc_ocp);
	}

	FUNC28(rstc);
	FUNC29(rstc);

	FUNC28(rstc_ocp);
	FUNC29(rstc_ocp);

	cqspi->master_ref_clk_hz = FUNC4(cqspi->clk);
	ddata  = FUNC19(dev);
	if (ddata && (ddata->quirks & CQSPI_NEEDS_WR_DELAY))
		cqspi->wr_delay = 5 * FUNC0(NSEC_PER_SEC,
						   cqspi->master_ref_clk_hz);

	ret = FUNC15(dev, irq, cqspi_irq_handler, 0,
			       pdev->name, cqspi);
	if (ret) {
		FUNC11(dev, "Cannot request IRQ.\n");
		goto probe_irq_failed;
	}

	FUNC10(cqspi);
	FUNC7(cqspi);
	cqspi->current_cs = -1;
	cqspi->sclk = 0;

	ret = FUNC9(cqspi, np);
	if (ret) {
		FUNC11(dev, "Cadence QSPI NOR probe failed %d\n", ret);
		goto probe_setup_failed;
	}

	return ret;
probe_setup_failed:
	FUNC6(cqspi, 0);
probe_irq_failed:
	FUNC3(cqspi->clk);
probe_clk_failed:
	FUNC27(dev);
	FUNC23(dev);
	return ret;
}
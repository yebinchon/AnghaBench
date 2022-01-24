#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_9__ {char* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  clear_wbl_overflow; int /*<<< orphan*/  select_ccdc_source; int /*<<< orphan*/  enable_clock; } ;
struct TYPE_10__ {scalar_t__ platform; int /*<<< orphan*/  vpss_lock; TYPE_1__ hw_ops; void* vpss_regs_base1; void* vpss_regs_base0; } ;

/* Variables and functions */
 scalar_t__ DM355 ; 
 int /*<<< orphan*/  DM355_VPSSBL_EVTSEL ; 
 int /*<<< orphan*/  DM355_VPSSBL_EVTSEL_DEFAULT ; 
 int /*<<< orphan*/  DM355_VPSSBL_INTSEL ; 
 int /*<<< orphan*/  DM355_VPSSBL_INTSEL_DEFAULT ; 
 scalar_t__ DM365 ; 
 int /*<<< orphan*/  DM365_ISP5_BCR ; 
 int DM365_ISP5_BCR_ISIF_OUT_ENABLE ; 
 int /*<<< orphan*/  DM365_ISP5_INTSEL1 ; 
 int DM365_ISP5_INTSEL1_DEFAULT ; 
 int /*<<< orphan*/  DM365_ISP5_INTSEL2 ; 
 int DM365_ISP5_INTSEL2_DEFAULT ; 
 int /*<<< orphan*/  DM365_ISP5_INTSEL3 ; 
 int DM365_ISP5_INTSEL3_DEFAULT ; 
 int /*<<< orphan*/  DM365_ISP5_PCCR ; 
 int DM365_ISP5_PCCR_BL_CLK_ENABLE ; 
 int DM365_ISP5_PCCR_H3A_CLK_ENABLE ; 
 int DM365_ISP5_PCCR_IPIPEIF_CLK_ENABLE ; 
 int DM365_ISP5_PCCR_IPIPE_CLK_ENABLE ; 
 int DM365_ISP5_PCCR_ISIF_CLK_ENABLE ; 
 int DM365_ISP5_PCCR_RSV ; 
 int DM365_ISP5_PCCR_RSZ_CLK_ENABLE ; 
 scalar_t__ DM644X ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*) ; 
 void* FUNC5 (TYPE_2__*,struct resource*) ; 
 int /*<<< orphan*/  dm355_enable_clock ; 
 int /*<<< orphan*/  dm355_select_ccdc_source ; 
 int /*<<< orphan*/  dm365_enable_clock ; 
 int /*<<< orphan*/  dm365_select_ccdc_source ; 
 int /*<<< orphan*/  dm644x_clear_wbl_overflow ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__ oper_cfg ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct resource *res;
	char *platform_name;

	if (!pdev->dev.platform_data) {
		FUNC3(&pdev->dev, "no platform data\n");
		return -ENOENT;
	}

	platform_name = pdev->dev.platform_data;
	if (!FUNC12(platform_name, "dm355_vpss"))
		oper_cfg.platform = DM355;
	else if (!FUNC12(platform_name, "dm365_vpss"))
		oper_cfg.platform = DM365;
	else if (!FUNC12(platform_name, "dm644x_vpss"))
		oper_cfg.platform = DM644X;
	else {
		FUNC3(&pdev->dev, "vpss driver not supported on this platform\n");
		return -ENODEV;
	}

	FUNC4(&pdev->dev, "%s vpss probed\n", platform_name);
	res = FUNC8(pdev, IORESOURCE_MEM, 0);

	oper_cfg.vpss_regs_base0 = FUNC5(&pdev->dev, res);
	if (FUNC0(oper_cfg.vpss_regs_base0))
		return FUNC1(oper_cfg.vpss_regs_base0);

	if (oper_cfg.platform == DM355 || oper_cfg.platform == DM365) {
		res = FUNC8(pdev, IORESOURCE_MEM, 1);

		oper_cfg.vpss_regs_base1 = FUNC5(&pdev->dev,
								 res);
		if (FUNC0(oper_cfg.vpss_regs_base1))
			return FUNC1(oper_cfg.vpss_regs_base1);
	}

	if (oper_cfg.platform == DM355) {
		oper_cfg.hw_ops.enable_clock = dm355_enable_clock;
		oper_cfg.hw_ops.select_ccdc_source = dm355_select_ccdc_source;
		/* Setup vpss interrupts */
		FUNC2(DM355_VPSSBL_INTSEL_DEFAULT, DM355_VPSSBL_INTSEL);
		FUNC2(DM355_VPSSBL_EVTSEL_DEFAULT, DM355_VPSSBL_EVTSEL);
	} else if (oper_cfg.platform == DM365) {
		oper_cfg.hw_ops.enable_clock = dm365_enable_clock;
		oper_cfg.hw_ops.select_ccdc_source = dm365_select_ccdc_source;
		/* Setup vpss interrupts */
		FUNC7((FUNC6(DM365_ISP5_PCCR) |
				      DM365_ISP5_PCCR_BL_CLK_ENABLE |
				      DM365_ISP5_PCCR_ISIF_CLK_ENABLE |
				      DM365_ISP5_PCCR_H3A_CLK_ENABLE |
				      DM365_ISP5_PCCR_RSZ_CLK_ENABLE |
				      DM365_ISP5_PCCR_IPIPE_CLK_ENABLE |
				      DM365_ISP5_PCCR_IPIPEIF_CLK_ENABLE |
				      DM365_ISP5_PCCR_RSV), DM365_ISP5_PCCR);
		FUNC7((FUNC6(DM365_ISP5_BCR) |
			    DM365_ISP5_BCR_ISIF_OUT_ENABLE), DM365_ISP5_BCR);
		FUNC7(DM365_ISP5_INTSEL1_DEFAULT, DM365_ISP5_INTSEL1);
		FUNC7(DM365_ISP5_INTSEL2_DEFAULT, DM365_ISP5_INTSEL2);
		FUNC7(DM365_ISP5_INTSEL3_DEFAULT, DM365_ISP5_INTSEL3);
	} else
		oper_cfg.hw_ops.clear_wbl_overflow = dm644x_clear_wbl_overflow;

	FUNC9(&pdev->dev);

	FUNC10(&pdev->dev);

	FUNC11(&oper_cfg.vpss_lock);
	FUNC4(&pdev->dev, "%s vpss probe success\n", platform_name);

	return 0;
}
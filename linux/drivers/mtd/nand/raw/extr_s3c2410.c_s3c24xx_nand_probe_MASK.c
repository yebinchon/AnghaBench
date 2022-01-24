#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct s3c2410_platform_nand {int nr_sets; struct s3c2410_nand_set* sets; } ;
struct s3c2410_nand_set {int nr_chips; } ;
struct s3c2410_nand_mtd {int /*<<< orphan*/  chip; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ops; } ;
struct s3c2410_nand_info {int mtd_count; struct s3c2410_nand_mtd* mtds; int /*<<< orphan*/  regs; struct s3c2410_platform_nand* platform; TYPE_3__* device; int /*<<< orphan*/  clk; TYPE_2__ controller; } ;
struct resource {int dummy; } ;
struct TYPE_11__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_3__ dev; struct resource* resource; } ;
struct TYPE_9__ {TYPE_3__* parent; } ;
struct mtd_info {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_ENABLE ; 
 int /*<<< orphan*/  CLOCK_SUSPEND ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct s3c2410_nand_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct resource*) ; 
 void* FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 struct mtd_info* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct s3c2410_nand_info*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,struct s3c2410_nand_mtd*,struct s3c2410_nand_info*) ; 
 int FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (struct s3c2410_nand_info*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ; 
 int /*<<< orphan*/  FUNC16 (struct s3c2410_nand_info*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct s3c2410_nand_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct s3c2410_nand_info*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ; 
 int FUNC19 (struct s3c2410_nand_info*) ; 
 int /*<<< orphan*/  s3c24xx_nand_controller_ops ; 
 int FUNC20 (struct platform_device*) ; 
 int FUNC21 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*) ; 
 struct s3c2410_platform_nand* FUNC23 (struct platform_device*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct s3c2410_platform_nand *plat;
	struct s3c2410_nand_info *info;
	struct s3c2410_nand_mtd *nmtd;
	struct s3c2410_nand_set *sets;
	struct resource *res;
	int err = 0;
	int size;
	int nr_sets;
	int setno;

	info = FUNC8(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (info == NULL) {
		err = -ENOMEM;
		goto exit_error;
	}

	FUNC12(pdev, info);

	FUNC9(&info->controller);
	info->controller.ops = &s3c24xx_nand_controller_ops;

	/* get the clock source and enable it */

	info->clk = FUNC6(&pdev->dev, "nand");
	if (FUNC0(info->clk)) {
		FUNC4(&pdev->dev, "failed to get clock\n");
		err = -ENOENT;
		goto exit_error;
	}

	FUNC16(info, CLOCK_ENABLE);

	if (pdev->dev.of_node)
		err = FUNC20(pdev);
	else
		err = FUNC21(pdev);

	if (err)
		goto exit_error;

	plat = FUNC23(pdev);

	/* allocate and map the resource */

	/* currently we assume we have the one resource */
	res = pdev->resource;
	size = FUNC14(res);

	info->device	= &pdev->dev;
	info->platform	= plat;

	info->regs = FUNC7(&pdev->dev, res);
	if (FUNC0(info->regs)) {
		err = FUNC1(info->regs);
		goto exit_error;
	}

	FUNC3(&pdev->dev, "mapped registers at %p\n", info->regs);

	if (!plat->sets || plat->nr_sets < 1) {
		err = -EINVAL;
		goto exit_error;
	}

	sets = plat->sets;
	nr_sets = plat->nr_sets;

	info->mtd_count = nr_sets;

	/* allocate our information */

	size = nr_sets * sizeof(*info->mtds);
	info->mtds = FUNC8(&pdev->dev, size, GFP_KERNEL);
	if (info->mtds == NULL) {
		err = -ENOMEM;
		goto exit_error;
	}

	/* initialise all possible chips */

	nmtd = info->mtds;

	for (setno = 0; setno < nr_sets; setno++, nmtd++, sets++) {
		struct mtd_info *mtd = FUNC11(&nmtd->chip);

		FUNC13("initialising set %d (%p, info %p)\n",
			 setno, nmtd, info);

		mtd->dev.parent = &pdev->dev;
		FUNC18(info, nmtd, sets);

		err = FUNC10(&nmtd->chip, sets ? sets->nr_chips : 1);
		if (err)
			goto exit_error;

		FUNC15(info, nmtd, sets);
	}

	/* initialise the hardware */
	err = FUNC19(info);
	if (err != 0)
		goto exit_error;

	err = FUNC17(info);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to init cpufreq support\n");
		goto exit_error;
	}

	if (FUNC2(info)) {
		FUNC5(&pdev->dev, "clock idle support enabled\n");
		FUNC16(info, CLOCK_SUSPEND);
	}

	return 0;

 exit_error:
	FUNC22(pdev);

	if (err == 0)
		err = -EINVAL;
	return err;
}
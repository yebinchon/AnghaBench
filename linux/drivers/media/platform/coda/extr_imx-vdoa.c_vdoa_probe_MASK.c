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
struct vdoa_data {int /*<<< orphan*/ * dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  vdoa_clk; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct vdoa_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vdoa_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct vdoa_data*) ; 
 int /*<<< orphan*/  vdoa_irq_handler ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct vdoa_data *vdoa;
	struct resource *res;
	int ret;

	FUNC8(&pdev->dev, FUNC0(32));

	vdoa = FUNC6(&pdev->dev, sizeof(*vdoa), GFP_KERNEL);
	if (!vdoa)
		return -ENOMEM;

	vdoa->dev = &pdev->dev;

	vdoa->vdoa_clk = FUNC4(vdoa->dev, NULL);
	if (FUNC1(vdoa->vdoa_clk)) {
		FUNC3(vdoa->dev, "Failed to get clock\n");
		return FUNC2(vdoa->vdoa_clk);
	}

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	vdoa->regs = FUNC5(vdoa->dev, res);
	if (FUNC1(vdoa->regs))
		return FUNC2(vdoa->regs);

	res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res)
		return -EINVAL;
	ret = FUNC7(&pdev->dev, res->start, NULL,
					vdoa_irq_handler, IRQF_ONESHOT,
					"vdoa", vdoa);
	if (ret < 0) {
		FUNC3(vdoa->dev, "Failed to get irq\n");
		return ret;
	}

	FUNC10(pdev, vdoa);

	return 0;
}
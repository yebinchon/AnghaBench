#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssbi {scalar_t__ controller_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MSM_SBI_CTRL_PMIC_ARBITER ; 
 scalar_t__ MSM_SBI_CTRL_SSBI ; 
 scalar_t__ MSM_SBI_CTRL_SSBI2 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 struct ssbi* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ssbi*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssbi_pa_read_bytes ; 
 int /*<<< orphan*/  ssbi_pa_write_bytes ; 
 int /*<<< orphan*/  ssbi_read_bytes ; 
 int /*<<< orphan*/  ssbi_write_bytes ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct resource *mem_res;
	struct ssbi *ssbi;
	const char *type;

	ssbi = FUNC5(&pdev->dev, sizeof(*ssbi), GFP_KERNEL);
	if (!ssbi)
		return -ENOMEM;

	mem_res = FUNC8(pdev, IORESOURCE_MEM, 0);
	ssbi->base = FUNC4(&pdev->dev, mem_res);
	if (FUNC0(ssbi->base))
		return FUNC1(ssbi->base);

	FUNC9(pdev, ssbi);

	type = FUNC7(np, "qcom,controller-type", NULL);
	if (type == NULL) {
		FUNC2(&pdev->dev, "Missing qcom,controller-type property\n");
		return -EINVAL;
	}
	FUNC3(&pdev->dev, "SSBI controller type: '%s'\n", type);
	if (FUNC11(type, "ssbi") == 0)
		ssbi->controller_type = MSM_SBI_CTRL_SSBI;
	else if (FUNC11(type, "ssbi2") == 0)
		ssbi->controller_type = MSM_SBI_CTRL_SSBI2;
	else if (FUNC11(type, "pmic-arbiter") == 0)
		ssbi->controller_type = MSM_SBI_CTRL_PMIC_ARBITER;
	else {
		FUNC2(&pdev->dev, "Unknown qcom,controller-type\n");
		return -EINVAL;
	}

	if (ssbi->controller_type == MSM_SBI_CTRL_PMIC_ARBITER) {
		ssbi->read = ssbi_pa_read_bytes;
		ssbi->write = ssbi_pa_write_bytes;
	} else {
		ssbi->read = ssbi_read_bytes;
		ssbi->write = ssbi_write_bytes;
	}

	FUNC10(&ssbi->lock);

	return FUNC6(&pdev->dev);
}
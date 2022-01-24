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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mtk_jpeg_dev {void* clk_jdec_smi; TYPE_1__* dev; void* clk_jdec; int /*<<< orphan*/ * larb; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int) ; 
 void* FUNC4 (TYPE_1__*,char*) ; 
 struct platform_device* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mtk_jpeg_dev *jpeg)
{
	struct device_node *node;
	struct platform_device *pdev;

	node = FUNC7(jpeg->dev->of_node, "mediatek,larb", 0);
	if (!node)
		return -EINVAL;
	pdev = FUNC5(node);
	if (FUNC3(!pdev)) {
		FUNC6(node);
		return -EINVAL;
	}
	FUNC6(node);

	jpeg->larb = &pdev->dev;

	jpeg->clk_jdec = FUNC4(jpeg->dev, "jpgdec");
	if (FUNC0(jpeg->clk_jdec))
		return FUNC1(jpeg->clk_jdec);

	jpeg->clk_jdec_smi = FUNC4(jpeg->dev, "jpgdec-smi");
	return FUNC2(jpeg->clk_jdec_smi);
}
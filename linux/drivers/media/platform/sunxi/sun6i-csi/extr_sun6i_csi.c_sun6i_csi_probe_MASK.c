#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* dev; } ;
struct sun6i_csi_dev {TYPE_1__ csi; TYPE_2__* dev; } ;
struct TYPE_4__ {int dma_pfn_offset; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int PHYS_OFFSET ; 
 struct sun6i_csi_dev* FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,struct sun6i_csi_dev*) ; 
 int FUNC2 (struct sun6i_csi_dev*,struct platform_device*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct sun6i_csi_dev *sdev;
	int ret;

	sdev = FUNC0(&pdev->dev, sizeof(*sdev), GFP_KERNEL);
	if (!sdev)
		return -ENOMEM;

	sdev->dev = &pdev->dev;
	/* The DMA bus has the memory mapped at 0 */
	sdev->dev->dma_pfn_offset = PHYS_OFFSET >> PAGE_SHIFT;

	ret = FUNC2(sdev, pdev);
	if (ret)
		return ret;

	FUNC1(pdev, sdev);

	sdev->csi.dev = &pdev->dev;
	return FUNC3(&sdev->csi);
}
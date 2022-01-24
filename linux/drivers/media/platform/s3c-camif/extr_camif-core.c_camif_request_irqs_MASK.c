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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct camif_vp {int /*<<< orphan*/  irq_queue; } ;
struct camif_dev {struct camif_vp* vp; } ;

/* Variables and functions */
 int CAMIF_VP_NUM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*,int) ; 
 int /*<<< orphan*/  s3c_camif_irq_handler ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
			      struct camif_dev *camif)
{
	int irq, ret, i;

	for (i = 0; i < CAMIF_VP_NUM; i++) {
		struct camif_vp *vp = &camif->vp[i];

		FUNC3(&vp->irq_queue);

		irq = FUNC4(pdev, i);
		if (irq <= 0)
			return -ENXIO;

		ret = FUNC2(&pdev->dev, irq, s3c_camif_irq_handler,
				       0, FUNC1(&pdev->dev), vp);
		if (ret < 0) {
			FUNC0(&pdev->dev, "failed to install IRQ: %d\n", ret);
			break;
		}
	}

	return ret;
}
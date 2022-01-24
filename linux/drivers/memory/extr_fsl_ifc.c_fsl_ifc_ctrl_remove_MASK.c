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
struct fsl_ifc_ctrl {int /*<<< orphan*/  gregs; int /*<<< orphan*/  irq; int /*<<< orphan*/  nand_irq; } ;

/* Variables and functions */
 struct fsl_ifc_ctrl* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fsl_ifc_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_ifc_ctrl*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct fsl_ifc_ctrl *ctrl = FUNC0(&dev->dev);

	FUNC2(ctrl->nand_irq, ctrl);
	FUNC2(ctrl->irq, ctrl);

	FUNC4(ctrl->nand_irq);
	FUNC4(ctrl->irq);

	FUNC3(ctrl->gregs);

	FUNC1(&dev->dev, NULL);
	FUNC5(ctrl);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_ifc_mtd {int /*<<< orphan*/  chip; } ;
struct TYPE_5__ {int /*<<< orphan*/ * nand; } ;
struct TYPE_4__ {int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 struct fsl_ifc_mtd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_ifc_mtd*) ; 
 TYPE_3__* fsl_ifc_ctrl_dev ; 
 int /*<<< orphan*/  fsl_ifc_nand_mutex ; 
 TYPE_1__* ifc_nand_ctrl ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct fsl_ifc_mtd *priv = FUNC0(&dev->dev);

	FUNC5(&priv->chip);
	FUNC1(priv);

	FUNC3(&fsl_ifc_nand_mutex);
	ifc_nand_ctrl->counter--;
	if (!ifc_nand_ctrl->counter) {
		fsl_ifc_ctrl_dev->nand = NULL;
		FUNC2(ifc_nand_ctrl);
	}
	FUNC4(&fsl_ifc_nand_mutex);

	return 0;
}
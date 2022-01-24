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
struct mtd_info {int /*<<< orphan*/  name; } ;
struct fsl_ifc_mtd {size_t bank; scalar_t__ vbase; int /*<<< orphan*/  chip; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** chips; } ;

/* Variables and functions */
 TYPE_1__* ifc_nand_ctrl ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fsl_ifc_mtd *priv)
{
	struct mtd_info *mtd = FUNC2(&priv->chip);

	FUNC1(mtd->name);

	if (priv->vbase)
		FUNC0(priv->vbase);

	ifc_nand_ctrl->chips[priv->bank] = NULL;

	return 0;
}
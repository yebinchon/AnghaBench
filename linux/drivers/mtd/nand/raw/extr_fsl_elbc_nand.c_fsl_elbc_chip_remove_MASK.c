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
struct mtd_info {struct fsl_elbc_mtd* name; } ;
struct fsl_elbc_mtd {size_t bank; scalar_t__ vbase; int /*<<< orphan*/  chip; TYPE_1__* ctrl; } ;
struct fsl_elbc_fcm_ctrl {int /*<<< orphan*/ ** chips; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_elbc_mtd*) ; 
 struct mtd_info* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fsl_elbc_mtd *priv)
{
	struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = priv->ctrl->nand;
	struct mtd_info *mtd = FUNC2(&priv->chip);

	FUNC1(mtd->name);

	if (priv->vbase)
		FUNC0(priv->vbase);

	elbc_fcm_ctrl->chips[priv->bank] = NULL;
	FUNC1(priv);
	return 0;
}
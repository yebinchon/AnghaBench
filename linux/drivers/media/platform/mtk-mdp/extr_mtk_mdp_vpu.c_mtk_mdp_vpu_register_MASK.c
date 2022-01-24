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
struct platform_device {int dummy; } ;
struct mtk_mdp_dev {TYPE_1__* pdev; int /*<<< orphan*/  vpu_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPI_MDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  mtk_mdp_vpu_ipi_handler ; 
 struct mtk_mdp_dev* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC3(struct platform_device *pdev)
{
	struct mtk_mdp_dev *mdp = FUNC1(pdev);
	int err;

	err = FUNC2(mdp->vpu_dev, IPI_MDP,
			       mtk_mdp_vpu_ipi_handler, "mdp_vpu", NULL);
	if (err)
		FUNC0(&mdp->pdev->dev,
			"vpu_ipi_registration fail status=%d\n", err);

	return err;
}
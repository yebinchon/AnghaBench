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
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct mtk_mdp_dev {int /*<<< orphan*/ * comp; int /*<<< orphan*/  job_wq; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_mdp_dev*) ; 
 struct mtk_mdp_dev* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct mtk_mdp_dev *mdp = FUNC6(pdev);
	int i;

	FUNC7(&pdev->dev);
	FUNC9(&pdev->dev);
	FUNC5(mdp);
	FUNC8(&mdp->v4l2_dev);

	FUNC3(mdp->job_wq);
	FUNC1(mdp->job_wq);

	for (i = 0; i < FUNC0(mdp->comp); i++)
		FUNC4(&pdev->dev, mdp->comp[i]);

	FUNC2(&pdev->dev, "%s driver unloaded\n", pdev->name);
	return 0;
}
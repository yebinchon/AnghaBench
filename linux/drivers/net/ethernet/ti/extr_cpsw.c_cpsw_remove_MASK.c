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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {int /*<<< orphan*/  dma; int /*<<< orphan*/  cpts; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {scalar_t__ ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cpsw_common* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct cpsw_common *cpsw = FUNC3(pdev);
	int i, ret;

	ret = FUNC5(&pdev->dev);
	if (ret < 0) {
		FUNC6(&pdev->dev);
		return ret;
	}

	for (i = 0; i < cpsw->data.slaves; i++)
		if (cpsw->slaves[i].ndev)
			FUNC8(cpsw->slaves[i].ndev);

	FUNC2(cpsw->cpts);
	FUNC0(cpsw->dma);
	FUNC1(pdev);
	FUNC7(&pdev->dev);
	FUNC4(&pdev->dev);
	return 0;
}
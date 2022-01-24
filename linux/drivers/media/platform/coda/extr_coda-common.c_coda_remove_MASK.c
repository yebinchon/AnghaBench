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
struct TYPE_2__ {int /*<<< orphan*/  size; scalar_t__ vaddr; } ;
struct coda_dev {int /*<<< orphan*/  ida; int /*<<< orphan*/  debugfs_root; int /*<<< orphan*/  workbuf; int /*<<< orphan*/  tempbuf; int /*<<< orphan*/  codebuf; TYPE_1__ iram; int /*<<< orphan*/  iram_pool; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  v4l2_dev; scalar_t__ m2m_dev; int /*<<< orphan*/ * vfd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct coda_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct coda_dev* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct coda_dev *dev = FUNC6(pdev);
	int i;

	for (i = 0; i < FUNC0(dev->vfd); i++) {
		if (FUNC10(&dev->vfd[i]))
			FUNC11(&dev->vfd[i]);
	}
	if (dev->m2m_dev)
		FUNC9(dev->m2m_dev);
	FUNC7(&pdev->dev);
	FUNC8(&dev->v4l2_dev);
	FUNC3(dev->workqueue);
	if (dev->iram.vaddr)
		FUNC4(dev->iram_pool, (unsigned long)dev->iram.vaddr,
			      dev->iram.size);
	FUNC1(dev, &dev->codebuf);
	FUNC1(dev, &dev->tempbuf);
	FUNC1(dev, &dev->workbuf);
	FUNC2(dev->debugfs_root);
	FUNC5(&dev->ida);
	return 0;
}
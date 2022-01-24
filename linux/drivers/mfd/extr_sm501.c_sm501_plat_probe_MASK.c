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
struct sm501_devdata {int irq; struct sm501_devdata* regs_claim; int /*<<< orphan*/  regs; TYPE_1__* io_res; void* mem_res; int /*<<< orphan*/  platdata; int /*<<< orphan*/  pdev_id; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sm501_devdata*) ; 
 struct sm501_devdata* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct sm501_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct sm501_devdata*) ; 
 struct sm501_devdata* FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct sm501_devdata*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *dev)
{
	struct sm501_devdata *sm;
	int ret;

	sm = FUNC4(sizeof(*sm), GFP_KERNEL);
	if (!sm) {
		ret = -ENOMEM;
		goto err1;
	}

	sm->dev = &dev->dev;
	sm->pdev_id = dev->id;
	sm->platdata = FUNC1(&dev->dev);

	ret = FUNC5(dev, 0);
	if (ret < 0)
		goto err_res;
	sm->irq = ret;

	sm->io_res = FUNC6(dev, IORESOURCE_MEM, 1);
	sm->mem_res = FUNC6(dev, IORESOURCE_MEM, 0);
	if (!sm->io_res || !sm->mem_res) {
		FUNC0(&dev->dev, "failed to get IO resource\n");
		ret = -ENOENT;
		goto err_res;
	}

	sm->regs_claim = FUNC9(sm->io_res->start,
					    0x100, "sm501");
	if (!sm->regs_claim) {
		FUNC0(&dev->dev, "cannot claim registers\n");
		ret = -EBUSY;
		goto err_res;
	}

	FUNC7(dev, sm);

	sm->regs = FUNC2(sm->io_res->start, FUNC10(sm->io_res));
	if (!sm->regs) {
		FUNC0(&dev->dev, "cannot remap registers\n");
		ret = -EIO;
		goto err_claim;
	}

	return FUNC11(sm);

 err_claim:
	FUNC8(sm->regs_claim);
	FUNC3(sm->regs_claim);
 err_res:
	FUNC3(sm);
 err1:
	return ret;

}
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
struct net_device {int dummy; } ;
struct ican3_dev {int num; TYPE_1__* dpm; TYPE_1__* ctrl; int /*<<< orphan*/  irq; int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_disable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ican3_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ican3_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ican3_dev* FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC7(pdev);
	struct ican3_dev *mod = FUNC6(ndev);

	/* unregister the netdevice, stop interrupts */
	FUNC8(ndev);
	FUNC5(&mod->napi);
	FUNC4(1 << mod->num, &mod->ctrl->int_disable);
	FUNC1(mod->irq, mod);

	/* put the module into reset */
	FUNC2(mod);

	/* unmap all registers */
	FUNC3(mod->ctrl);
	FUNC3(mod->dpm);

	FUNC0(ndev);

	return 0;
}
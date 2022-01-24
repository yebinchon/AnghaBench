#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct m_can_classdev {TYPE_1__* net; int /*<<< orphan*/  dev; scalar_t__ pm_clock_support; int /*<<< orphan*/  version; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct m_can_classdev*) ; 
 int FUNC6 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 

int FUNC11(struct m_can_classdev *m_can_dev)
{
	int ret;

	if (m_can_dev->pm_clock_support) {
		FUNC9(m_can_dev->dev);
		ret = FUNC4(m_can_dev);
		if (ret)
			goto pm_runtime_fail;
	}

	ret = FUNC6(m_can_dev);
	if (ret)
		goto clk_disable;

	ret = FUNC10(m_can_dev->net);
	if (ret) {
		FUNC0(m_can_dev->dev, "registering %s failed (err=%d)\n",
			m_can_dev->net->name, ret);
		goto clk_disable;
	}

	FUNC2(m_can_dev->net);

	FUNC7(m_can_dev->net);

	FUNC1(m_can_dev->dev, "%s device registered (irq=%d, version=%d)\n",
		 KBUILD_MODNAME, m_can_dev->net->irq, m_can_dev->version);

	/* Probe finished
	 * Stop clocks. They will be reactivated once the M_CAN device is opened
	 */
clk_disable:
	FUNC5(m_can_dev);
pm_runtime_fail:
	if (ret) {
		if (m_can_dev->pm_clock_support)
			FUNC8(m_can_dev->dev);
		FUNC3(m_can_dev->net);
	}

	return ret;
}
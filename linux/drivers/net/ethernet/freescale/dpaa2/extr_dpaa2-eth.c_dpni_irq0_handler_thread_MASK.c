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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct fsl_mc_device {int /*<<< orphan*/  mc_handle; int /*<<< orphan*/  mc_io; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DPNI_IRQ_EVENT_ENDPOINT_CHANGED ; 
 int DPNI_IRQ_EVENT_LINK_CHANGED ; 
 int /*<<< orphan*/  DPNI_IRQ_INDEX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct net_device* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fsl_mc_device* FUNC6 (struct device*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq_num, void *arg)
{
	u32 status = ~0;
	struct device *dev = (struct device *)arg;
	struct fsl_mc_device *dpni_dev = FUNC6(dev);
	struct net_device *net_dev = FUNC0(dev);
	int err;

	err = FUNC1(dpni_dev->mc_io, 0, dpni_dev->mc_handle,
				  DPNI_IRQ_INDEX, &status);
	if (FUNC7(err)) {
		FUNC3(net_dev, "Can't get irq status (err %d)\n", err);
		return IRQ_HANDLED;
	}

	if (status & DPNI_IRQ_EVENT_LINK_CHANGED)
		FUNC2(FUNC4(net_dev));

	if (status & DPNI_IRQ_EVENT_ENDPOINT_CHANGED)
		FUNC5(FUNC4(net_dev));

	return IRQ_HANDLED;
}
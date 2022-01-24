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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct xge_pdata {int /*<<< orphan*/  irq_name; TYPE_1__ resources; } ;
struct net_device {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct xge_pdata* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  xge_irq ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC1(ndev);
	int ret;

	FUNC3(pdata->irq_name, IRQ_ID_SIZE, "%s", ndev->name);

	ret = FUNC2(pdata->resources.irq, xge_irq, 0, pdata->irq_name,
			  pdata);
	if (ret)
		FUNC0(ndev, "Failed to request irq %s\n", pdata->irq_name);

	return ret;
}
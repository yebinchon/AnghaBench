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
struct net_device {int /*<<< orphan*/  name; } ;
struct cp_private {int /*<<< orphan*/  napi; int /*<<< orphan*/  mii_if; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cp_private*) ; 
 int /*<<< orphan*/  cp_interrupt ; 
 int /*<<< orphan*/  FUNC4 (struct cp_private*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cp_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct cp_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int FUNC13 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC14 (struct net_device *dev)
{
	struct cp_private *cp = FUNC8(dev);
	const int irq = cp->pdev->irq;
	int rc;

	FUNC10(cp, ifup, dev, "enabling interface\n");

	rc = FUNC0(cp);
	if (rc)
		return rc;

	FUNC7(&cp->napi);

	FUNC3(cp);

	rc = FUNC13(irq, cp_interrupt, IRQF_SHARED, dev->name, dev);
	if (rc)
		goto err_out_hw;

	FUNC1(cp);

	FUNC9(dev);
	FUNC5(&cp->mii_if, FUNC11(cp), true);
	FUNC12(dev);

	return 0;

err_out_hw:
	FUNC6(&cp->napi);
	FUNC4(cp);
	FUNC2(cp);
	return rc;
}
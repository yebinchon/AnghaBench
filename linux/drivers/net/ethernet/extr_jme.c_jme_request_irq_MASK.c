#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct jme_adapter {TYPE_1__* pdev; int /*<<< orphan*/  flags; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int /*<<< orphan*/  JME_FLAG_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jme_intr ; 
 int /*<<< orphan*/  jme_msi ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct jme_adapter *jme)
{
	int rc;
	struct net_device *netdev = jme->dev;
	irq_handler_t handler = jme_intr;
	int irq_flags = IRQF_SHARED;

	if (!FUNC3(jme->pdev)) {
		FUNC5(JME_FLAG_MSI, &jme->flags);
		handler = jme_msi;
		irq_flags = 0;
	}

	rc = FUNC4(jme->pdev->irq, handler, irq_flags, netdev->name,
			  netdev);
	if (rc) {
		FUNC1(netdev,
			   "Unable to request %s interrupt (return: %d)\n",
			   FUNC6(JME_FLAG_MSI, &jme->flags) ? "MSI" : "INTx",
			   rc);

		if (FUNC6(JME_FLAG_MSI, &jme->flags)) {
			FUNC2(jme->pdev);
			FUNC0(JME_FLAG_MSI, &jme->flags);
		}
	} else {
		netdev->irq = jme->pdev->irq;
	}

	return rc;
}
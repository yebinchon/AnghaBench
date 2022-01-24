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
struct ravb_private {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISS ; 
 int ISS_CGIS ; 
 int ISS_ES ; 
 int ISS_TFUS ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct net_device *ndev = dev_id;
	struct ravb_private *priv = FUNC0(ndev);
	irqreturn_t result = IRQ_NONE;
	u32 iss;

	FUNC5(&priv->lock);
	/* Get interrupt status */
	iss = FUNC3(ndev, ISS);

	/* Timestamp updated */
	if ((iss & ISS_TFUS) && FUNC4(ndev))
		result = IRQ_HANDLED;

	/* Error status summary */
	if (iss & ISS_ES) {
		FUNC1(ndev);
		result = IRQ_HANDLED;
	}

	/* gPTP interrupt status summary */
	if (iss & ISS_CGIS) {
		FUNC2(ndev);
		result = IRQ_HANDLED;
	}

	FUNC6(&priv->lock);
	return result;
}
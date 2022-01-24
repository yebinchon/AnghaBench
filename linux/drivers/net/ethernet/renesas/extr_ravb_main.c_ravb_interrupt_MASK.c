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
 int ISS_FRS ; 
 int ISS_FTS ; 
 int ISS_MS ; 
 int ISS_TFUS ; 
 int RAVB_BE ; 
 int RAVB_NC ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*,int) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct net_device *ndev = dev_id;
	struct ravb_private *priv = FUNC0(ndev);
	irqreturn_t result = IRQ_NONE;
	u32 iss;

	FUNC7(&priv->lock);
	/* Get interrupt status */
	iss = FUNC5(ndev, ISS);

	/* Received and transmitted interrupts */
	if (iss & (ISS_FRS | ISS_FTS | ISS_TFUS)) {
		int q;

		/* Timestamp updated */
		if (FUNC6(ndev))
			result = IRQ_HANDLED;

		/* Network control and best effort queue RX/TX */
		for (q = RAVB_NC; q >= RAVB_BE; q--) {
			if (FUNC4(ndev, q))
				result = IRQ_HANDLED;
		}
	}

	/* E-MAC status summary */
	if (iss & ISS_MS) {
		FUNC1(ndev);
		result = IRQ_HANDLED;
	}

	/* Error status summary */
	if (iss & ISS_ES) {
		FUNC2(ndev);
		result = IRQ_HANDLED;
	}

	/* gPTP interrupt status summary */
	if (iss & ISS_CGIS) {
		FUNC3(ndev);
		result = IRQ_HANDLED;
	}

	FUNC8(&priv->lock);
	return result;
}
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
struct ravb_private {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id, int q)
{
	struct net_device *ndev = dev_id;
	struct ravb_private *priv = FUNC0(ndev);
	irqreturn_t result = IRQ_NONE;

	FUNC2(&priv->lock);

	/* Network control/Best effort queue RX/TX */
	if (FUNC1(ndev, q))
		result = IRQ_HANDLED;

	FUNC3(&priv->lock);
	return result;
}
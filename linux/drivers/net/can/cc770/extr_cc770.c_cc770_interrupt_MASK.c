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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct cc770_priv {int* obj_flags; int /*<<< orphan*/  (* post_irq ) (struct cc770_priv*) ;int /*<<< orphan*/  (* pre_irq ) (struct cc770_priv*) ;TYPE_1__ can; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CAN_STATE_STOPPED ; 
 int CC770_MAX_IRQ ; 
 int CC770_OBJ_FLAG_RTR ; 
 int CC770_OBJ_FLAG_RX ; 
 int CC770_OBJ_MAX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct cc770_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  interrupt ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int) ; 
 struct cc770_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct cc770_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct cc770_priv*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct cc770_priv *priv = FUNC8(dev);
	u8 intid;
	int o, n = 0;

	/* Shared interrupts and IRQ off? */
	if (priv->can.state == CAN_STATE_STOPPED)
		return IRQ_NONE;

	if (priv->pre_irq)
		priv->pre_irq(priv);

	while (n < CC770_MAX_IRQ) {
		/* Read the highest pending interrupt request */
		intid = FUNC0(priv, interrupt);
		if (!intid)
			break;
		n++;

		if (intid == 1) {
			/* Exit in case of bus-off */
			if (FUNC3(dev))
				break;
		} else {
			o = FUNC5(intid);

			if (o >= CC770_OBJ_MAX) {
				FUNC7(dev, "Unexpected interrupt id %d\n",
					   intid);
				continue;
			}

			if (priv->obj_flags[o] & CC770_OBJ_FLAG_RTR)
				FUNC1(dev, o);
			else if (priv->obj_flags[o] & CC770_OBJ_FLAG_RX)
				FUNC2(dev, o);
			else
				FUNC4(dev, o);
		}
	}

	if (priv->post_irq)
		priv->post_irq(priv);

	if (n >= CC770_MAX_IRQ)
		FUNC6(dev, "%d messages handled in ISR", n);

	return (n) ? IRQ_HANDLED : IRQ_NONE;
}
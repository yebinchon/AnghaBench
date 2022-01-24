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
struct bcm_enet_priv {int /*<<< orphan*/  mib_update_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENET_IRMASK_REG ; 
 int ENET_IR_MIB ; 
 int /*<<< orphan*/  ENET_IR_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 struct bcm_enet_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct net_device *dev;
	struct bcm_enet_priv *priv;
	u32 stat;

	dev = dev_id;
	priv = FUNC2(dev);

	stat = FUNC0(priv, ENET_IR_REG);
	if (!(stat & ENET_IR_MIB))
		return IRQ_NONE;

	/* clear & mask interrupt */
	FUNC1(priv, ENET_IR_MIB, ENET_IR_REG);
	FUNC1(priv, 0, ENET_IRMASK_REG);

	/* read mib registers in workqueue */
	FUNC3(&priv->mib_update_task);

	return IRQ_HANDLED;
}
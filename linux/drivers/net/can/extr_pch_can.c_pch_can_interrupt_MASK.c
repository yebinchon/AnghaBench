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
struct pch_can_priv {int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PCH_CAN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pch_can_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_can_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_can_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct net_device *ndev = (struct net_device *)dev_id;
	struct pch_can_priv *priv = FUNC1(ndev);

	if (!FUNC2(priv))
		return IRQ_NONE;

	FUNC3(priv, PCH_CAN_NONE);
	FUNC0(&priv->napi);
	return IRQ_HANDLED;
}
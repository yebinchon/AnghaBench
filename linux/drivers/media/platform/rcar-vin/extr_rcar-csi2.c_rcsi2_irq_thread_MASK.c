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
struct rcar_csi2 {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rcar_csi2*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_csi2*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct rcar_csi2 *priv = data;

	FUNC1(&priv->lock);
	FUNC4(priv);
	FUNC5(1000, 2000);
	if (FUNC3(priv))
		FUNC0(priv->dev, "Failed to restart CSI-2 receiver\n");
	FUNC2(&priv->lock);

	return IRQ_HANDLED;
}
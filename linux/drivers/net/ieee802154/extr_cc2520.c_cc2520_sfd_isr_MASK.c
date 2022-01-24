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
struct cc2520_private {TYPE_1__* spi; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_complete; scalar_t__ is_tx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct cc2520_private *priv = data;
	unsigned long flags;

	FUNC2(&priv->lock, flags);
	if (priv->is_tx) {
		priv->is_tx = 0;
		FUNC3(&priv->lock, flags);
		FUNC1(&priv->spi->dev, "SFD for TX\n");
		FUNC0(&priv->tx_complete);
	} else {
		FUNC3(&priv->lock, flags);
		FUNC1(&priv->spi->dev, "SFD for RX\n");
	}

	return IRQ_HANDLED;
}
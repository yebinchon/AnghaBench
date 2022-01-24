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
struct ca8210_priv {TYPE_1__* spi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct ca8210_priv *priv = dev_id;
	int status;

	FUNC1(&priv->spi->dev, "irq: Interrupt occurred\n");
	do {
		status = FUNC0(priv->spi, NULL, 0);
		if (status && (status != -EBUSY)) {
			FUNC2(
				&priv->spi->dev,
				"spi read failed, returned %d\n",
				status
			);
		}
	} while (status == -EBUSY);
	return IRQ_HANDLED;
}
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
struct img_ir_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  hw; int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_IR_IRQ_CLEAR ; 
 int IMG_IR_IRQ_DATA2_VALID ; 
 int IMG_IR_IRQ_DATA_MATCH ; 
 int IMG_IR_IRQ_DATA_VALID ; 
 int IMG_IR_IRQ_EDGE ; 
 int /*<<< orphan*/  IMG_IR_IRQ_ENABLE ; 
 int /*<<< orphan*/  IMG_IR_IRQ_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct img_ir_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct img_ir_priv*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct img_ir_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct img_ir_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct img_ir_priv *priv = dev_id;
	u32 irq_status;

	FUNC6(&priv->lock);
	/* we have to clear irqs before reading */
	irq_status = FUNC4(priv, IMG_IR_IRQ_STATUS);
	FUNC5(priv, IMG_IR_IRQ_CLEAR, irq_status);

	/* don't handle valid data irqs if we're only interested in matches */
	irq_status &= FUNC4(priv, IMG_IR_IRQ_ENABLE);

	/* hand off edge interrupts to raw decode handler */
	if (irq_status & IMG_IR_IRQ_EDGE && FUNC3(&priv->raw))
		FUNC2(priv, irq_status);

	/* hand off hardware match interrupts to hardware decode handler */
	if (irq_status & (IMG_IR_IRQ_DATA_MATCH |
			  IMG_IR_IRQ_DATA_VALID |
			  IMG_IR_IRQ_DATA2_VALID) &&
	    FUNC0(&priv->hw))
		FUNC1(priv, irq_status);

	FUNC7(&priv->lock);
	return IRQ_HANDLED;
}
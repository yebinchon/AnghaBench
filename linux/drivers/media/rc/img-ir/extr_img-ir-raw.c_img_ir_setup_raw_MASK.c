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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rdev; } ;
struct img_ir_priv {int /*<<< orphan*/  lock; TYPE_1__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_IR_IRQ_CLEAR ; 
 int /*<<< orphan*/  IMG_IR_IRQ_EDGE ; 
 int /*<<< orphan*/  IMG_IR_IRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct img_ir_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_ir_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct img_ir_priv *priv)
{
	u32 irq_en;

	if (!priv->raw.rdev)
		return;

	/* clear and enable edge interrupts */
	FUNC2(&priv->lock);
	irq_en = FUNC0(priv, IMG_IR_IRQ_ENABLE);
	irq_en |= IMG_IR_IRQ_EDGE;
	FUNC1(priv, IMG_IR_IRQ_CLEAR, IMG_IR_IRQ_EDGE);
	FUNC1(priv, IMG_IR_IRQ_ENABLE, irq_en);
	FUNC3(&priv->lock);
}
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
typedef  int /*<<< orphan*/  u32 ;
struct rc_dev {int dummy; } ;
struct img_ir_priv_raw {int /*<<< orphan*/  timer; struct rc_dev* rdev; } ;
struct img_ir_priv {int /*<<< orphan*/  lock; struct img_ir_priv_raw raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_IR_IRQ_CLEAR ; 
 int /*<<< orphan*/  IMG_IR_IRQ_EDGE ; 
 int /*<<< orphan*/  IMG_IR_IRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct img_ir_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_ir_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct img_ir_priv *priv)
{
	struct img_ir_priv_raw *raw = &priv->raw;
	struct rc_dev *rdev = raw->rdev;
	u32 irq_en;

	if (!rdev)
		return;

	/* switch off and disable raw (edge) interrupts */
	FUNC4(&priv->lock);
	raw->rdev = NULL;
	irq_en = FUNC1(priv, IMG_IR_IRQ_ENABLE);
	irq_en &= ~IMG_IR_IRQ_EDGE;
	FUNC2(priv, IMG_IR_IRQ_ENABLE, irq_en);
	FUNC2(priv, IMG_IR_IRQ_CLEAR, IMG_IR_IRQ_EDGE);
	FUNC5(&priv->lock);

	FUNC3(rdev);

	FUNC0(&raw->timer);
}
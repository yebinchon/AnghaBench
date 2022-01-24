#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct img_ir_priv_hw {int* ct_quirks; int quirk_suspend_irq; int /*<<< orphan*/  suspend_timer; scalar_t__ stopping; TYPE_2__* decoder; } ;
struct img_ir_priv {struct img_ir_priv_hw hw; } ;
struct TYPE_3__ {unsigned int code_type; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_IR_CONTROL ; 
 int /*<<< orphan*/  IMG_IR_DATA_LW ; 
 int /*<<< orphan*/  IMG_IR_DATA_UP ; 
 int IMG_IR_IRQ_EDGE ; 
 int /*<<< orphan*/  IMG_IR_IRQ_ENABLE ; 
 int IMG_IR_QUIRK_CODE_IRQ ; 
 int IMG_IR_QUIRK_CODE_LEN_INCR ; 
 int IMG_IR_RXDLEN ; 
 int IMG_IR_RXDLEN_SHIFT ; 
 int IMG_IR_RXDVAL ; 
 int IMG_IR_RXDVALD2 ; 
 int /*<<< orphan*/  IMG_IR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct img_ir_priv*,int,int) ; 
 void* FUNC1 (struct img_ir_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_ir_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct img_ir_priv *priv, u32 irq_status)
{
	struct img_ir_priv_hw *hw = &priv->hw;
	u32 ir_status, len, lw, up;
	unsigned int ct;

	/* use the current decoder */
	if (!hw->decoder)
		return;

	ct = hw->decoder->control.code_type;

	ir_status = FUNC1(priv, IMG_IR_STATUS);
	if (!(ir_status & (IMG_IR_RXDVAL | IMG_IR_RXDVALD2))) {
		if (!(priv->hw.ct_quirks[ct] & IMG_IR_QUIRK_CODE_IRQ) ||
				hw->stopping)
			return;
		/*
		 * The below functionality is added as a work around to stop
		 * multiple Interrupts generated when an incomplete IR code is
		 * received by the decoder.
		 * The decoder generates rapid interrupts without actually
		 * having received any new data. After a single interrupt it's
		 * expected to clear up, but instead multiple interrupts are
		 * rapidly generated. only way to get out of this loop is to
		 * reset the control register after a short delay.
		 */
		FUNC2(priv, IMG_IR_CONTROL, 0);
		hw->quirk_suspend_irq = FUNC1(priv, IMG_IR_IRQ_ENABLE);
		FUNC2(priv, IMG_IR_IRQ_ENABLE,
			     hw->quirk_suspend_irq & IMG_IR_IRQ_EDGE);

		/* Timer activated to re-enable the protocol. */
		FUNC3(&hw->suspend_timer,
			  jiffies + FUNC4(5));
		return;
	}
	ir_status &= ~(IMG_IR_RXDVAL | IMG_IR_RXDVALD2);
	FUNC2(priv, IMG_IR_STATUS, ir_status);

	len = (ir_status & IMG_IR_RXDLEN) >> IMG_IR_RXDLEN_SHIFT;
	/* some versions report wrong length for certain code types */
	if (hw->ct_quirks[ct] & IMG_IR_QUIRK_CODE_LEN_INCR)
		++len;

	lw = FUNC1(priv, IMG_IR_DATA_LW);
	up = FUNC1(priv, IMG_IR_DATA_UP);
	FUNC0(priv, len, (u64)up << 32 | lw);
}
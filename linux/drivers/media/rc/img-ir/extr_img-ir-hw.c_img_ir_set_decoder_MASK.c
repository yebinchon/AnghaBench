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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ mask; scalar_t__ data; } ;
struct rc_dev {int /*<<< orphan*/  wakeup_protocol; TYPE_1__ scancode_wakeup_filter; } ;
struct TYPE_4__ {int ctrl; int /*<<< orphan*/  timings; } ;
struct img_ir_priv_hw {int stopping; TYPE_2__ reg_timings; int /*<<< orphan*/  clk_hz; scalar_t__ enabled_protocols; struct img_ir_decoder const* decoder; int /*<<< orphan*/  mode; int /*<<< orphan*/  suspend_timer; int /*<<< orphan*/  end_timer; struct rc_dev* rdev; } ;
struct img_ir_priv {int /*<<< orphan*/  lock; struct img_ir_priv_hw hw; } ;
struct img_ir_decoder {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_IR_CONTROL ; 
 int /*<<< orphan*/  IMG_IR_DATA_LW ; 
 int /*<<< orphan*/  IMG_IR_DATA_UP ; 
 int IMG_IR_IRQ_ALL ; 
 int /*<<< orphan*/  IMG_IR_IRQ_CLEAR ; 
 int IMG_IR_IRQ_EDGE ; 
 int /*<<< orphan*/  IMG_IR_IRQ_ENABLE ; 
 int /*<<< orphan*/  IMG_IR_M_NORMAL ; 
 int IMG_IR_RXDVAL ; 
 int IMG_IR_RXDVALD2 ; 
 int /*<<< orphan*/  IMG_IR_STATUS ; 
 int /*<<< orphan*/  RC_FILTER_NORMAL ; 
 int /*<<< orphan*/  RC_PROTO_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct img_ir_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct img_ir_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct img_ir_decoder const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct img_ir_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct img_ir_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct img_ir_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct img_ir_priv *priv,
			       const struct img_ir_decoder *decoder,
			       u64 proto)
{
	struct img_ir_priv_hw *hw = &priv->hw;
	struct rc_dev *rdev = hw->rdev;
	u32 ir_status, irq_en;
	FUNC7(&priv->lock);

	/*
	 * First record that the protocol is being stopped so that the end timer
	 * isn't restarted while we're trying to stop it.
	 */
	hw->stopping = true;

	/*
	 * Release the lock to stop the end timer, since the end timer handler
	 * acquires the lock and we don't want to deadlock waiting for it.
	 */
	FUNC8(&priv->lock);
	FUNC2(&hw->end_timer);
	FUNC2(&hw->suspend_timer);
	FUNC7(&priv->lock);

	hw->stopping = false;

	/* switch off and disable interrupts */
	FUNC5(priv, IMG_IR_CONTROL, 0);
	irq_en = FUNC4(priv, IMG_IR_IRQ_ENABLE);
	FUNC5(priv, IMG_IR_IRQ_ENABLE, irq_en & IMG_IR_IRQ_EDGE);
	FUNC5(priv, IMG_IR_IRQ_CLEAR, IMG_IR_IRQ_ALL & ~IMG_IR_IRQ_EDGE);

	/* ack any data already detected */
	ir_status = FUNC4(priv, IMG_IR_STATUS);
	if (ir_status & (IMG_IR_RXDVAL | IMG_IR_RXDVALD2)) {
		ir_status &= ~(IMG_IR_RXDVAL | IMG_IR_RXDVALD2);
		FUNC5(priv, IMG_IR_STATUS, ir_status);
	}

	/* always read data to clear buffer if IR wakes the device */
	FUNC4(priv, IMG_IR_DATA_LW);
	FUNC4(priv, IMG_IR_DATA_UP);

	/* switch back to normal mode */
	hw->mode = IMG_IR_M_NORMAL;

	/* clear the wakeup scancode filter */
	rdev->scancode_wakeup_filter.data = 0;
	rdev->scancode_wakeup_filter.mask = 0;
	rdev->wakeup_protocol = RC_PROTO_UNKNOWN;

	/* clear raw filters */
	FUNC0(priv, NULL);
	FUNC1(priv, NULL);

	/* clear the enabled protocols */
	hw->enabled_protocols = 0;

	/* switch decoder */
	hw->decoder = decoder;
	if (!decoder)
		goto unlock;

	/* set the enabled protocols */
	if (!proto)
		proto = decoder->type;
	hw->enabled_protocols = proto;

	/* write the new timings */
	FUNC3(decoder, &hw->reg_timings, hw->clk_hz);
	FUNC6(priv, &hw->reg_timings.timings, RC_FILTER_NORMAL);

	/* set up and enable */
	FUNC5(priv, IMG_IR_CONTROL, hw->reg_timings.ctrl);


unlock:
	FUNC8(&priv->lock);
}
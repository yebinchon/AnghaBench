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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct mtk_ir {TYPE_1__* data; int /*<<< orphan*/  rc; int /*<<< orphan*/  dev; } ;
struct ir_raw_event {int pulse; int duration; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MTK_CHKDATA_SZ ; 
 int /*<<< orphan*/  MTK_IRCLR ; 
 size_t MTK_IRCLR_REG ; 
 int /*<<< orphan*/  MTK_IRINT_CLR ; 
 size_t MTK_IRINT_CLR_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MTK_IR_SAMPLE ; 
 int MTK_MAX_SAMPLES ; 
 scalar_t__ MTK_WIDTH_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_ir*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct mtk_ir*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_ir*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irqno, void *dev_id)
{
	struct mtk_ir *ir = dev_id;
	u8  wid = 0;
	u32 i, j, val;
	struct ir_raw_event rawir = {};

	/*
	 * Reset decoder state machine explicitly is required
	 * because 1) the longest duration for space MTK IR hardware
	 * could record is not safely long. e.g  12ms if rx resolution
	 * is 46us by default. There is still the risk to satisfying
	 * every decoder to reset themselves through long enough
	 * trailing spaces and 2) the IRQ handler guarantees that
	 * start of IR message is always contained in and starting
	 * from register mtk_chkdata_reg(ir, i).
	 */
	FUNC3(ir->rc);

	/* First message must be pulse */
	rawir.pulse = false;

	/* Handle all pulse and space IR controller captures */
	for (i = 0 ; i < MTK_CHKDATA_SZ ; i++) {
		val = FUNC6(ir, FUNC5(ir, i));
		FUNC1(ir->dev, "@reg%d=0x%08x\n", i, val);

		for (j = 0 ; j < 4 ; j++) {
			wid = (val & (MTK_WIDTH_MASK << j * 8)) >> j * 8;
			rawir.pulse = !rawir.pulse;
			rawir.duration = wid * (MTK_IR_SAMPLE + 1);
			FUNC4(ir->rc, &rawir);
		}
	}

	/*
	 * The maximum number of edges the IR controller can
	 * hold is MTK_CHKDATA_SZ * 4. So if received IR messages
	 * is over the limit, the last incomplete IR message would
	 * be appended trailing space and still would be sent into
	 * ir-rc-raw to decode. That helps it is possible that it
	 * has enough information to decode a scancode even if the
	 * trailing end of the message is missing.
	 */
	if (!FUNC0(wid, rawir.pulse)) {
		rawir.pulse = false;
		rawir.duration = MTK_MAX_SAMPLES * (MTK_IR_SAMPLE + 1);
		FUNC4(ir->rc, &rawir);
	}

	FUNC2(ir->rc);

	/*
	 * Restart controller for the next receive that would
	 * clear up all CHKDATA registers
	 */
	FUNC7(ir, 0x1, MTK_IRCLR, ir->data->regs[MTK_IRCLR_REG]);

	/* Clear interrupt status */
	FUNC7(ir, 0x1, MTK_IRINT_CLR,
		     ir->data->regs[MTK_IRINT_CLR_REG]);

	return IRQ_HANDLED;
}
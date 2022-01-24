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
struct meson_ir {int /*<<< orphan*/  lock; int /*<<< orphan*/  rc; scalar_t__ reg; } ;
struct ir_raw_event {int pulse; int /*<<< orphan*/  duration; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ IR_DEC_REG1 ; 
 scalar_t__ IR_DEC_STATUS ; 
 int MESON_TRATE ; 
 int /*<<< orphan*/  REG1_TIME_IV_MASK ; 
 int STATUS_IR_DEC_IN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irqno, void *dev_id)
{
	struct meson_ir *ir = dev_id;
	u32 duration, status;
	struct ir_raw_event rawir = {};

	FUNC4(&ir->lock);

	duration = FUNC3(ir->reg + IR_DEC_REG1);
	duration = FUNC0(REG1_TIME_IV_MASK, duration);
	rawir.duration = FUNC1(duration * MESON_TRATE);

	status = FUNC3(ir->reg + IR_DEC_STATUS);
	rawir.pulse = !!(status & STATUS_IR_DEC_IN);

	FUNC2(ir->rc, &rawir);

	FUNC5(&ir->lock);

	return IRQ_HANDLED;
}
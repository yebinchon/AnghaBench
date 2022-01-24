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
typedef  int u32 ;
struct kvaser_pciefd_can {int /*<<< orphan*/  lock; scalar_t__ reg_base; TYPE_1__* kv_pcie; } ;
struct TYPE_2__ {int bus_freq; } ;

/* Variables and functions */
 scalar_t__ KVASER_PCIEFD_KCAN_PWM_REG ; 
 int KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kvaser_pciefd_can*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct kvaser_pciefd_can *can)
{
	int top, trigger;
	u32 pwm_ctrl;
	unsigned long irq;

	FUNC1(can);
	FUNC2(&can->lock, irq);

	/* Set frequency to 500 KHz*/
	top = can->kv_pcie->bus_freq / (2 * 500000) - 1;

	pwm_ctrl = top & 0xff;
	pwm_ctrl |= (top & 0xff) << KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT;
	FUNC0(pwm_ctrl, can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);

	/* Set duty cycle to 95 */
	trigger = (100 * top - 95 * (top + 1) + 50) / 100;
	pwm_ctrl = trigger & 0xff;
	pwm_ctrl |= (top & 0xff) << KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT;
	FUNC0(pwm_ctrl, can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);
	FUNC3(&can->lock, irq);
}
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
typedef  int u8 ;
typedef  int u32 ;
struct kvaser_pciefd_can {int /*<<< orphan*/  lock; scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ KVASER_PCIEFD_KCAN_PWM_REG ; 
 int KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct kvaser_pciefd_can *can)
{
	u8 top;
	u32 pwm_ctrl;
	unsigned long irq;

	FUNC2(&can->lock, irq);
	pwm_ctrl = FUNC0(can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);
	top = (pwm_ctrl >> KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT) & 0xff;

	/* Set duty cycle to zero */
	pwm_ctrl |= top;
	FUNC1(pwm_ctrl, can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);
	FUNC3(&can->lock, irq);
}
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
typedef  int u16 ;
struct ir_raw_event {int pulse; int /*<<< orphan*/  duration; } ;
struct ene_device {int rx_period_adjust; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  rdev; int /*<<< orphan*/  w_pointer; int /*<<< orphan*/  r_pointer; int /*<<< orphan*/  hw_extra_buffer; scalar_t__ rx_fan_input_inuse; scalar_t__ hw_learning_and_tx_capable; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_FW_PACKET_SIZE ; 
 int ENE_FW_SAMPLE_BUFFER ; 
 int ENE_FW_SAMPLE_PERIOD_FAN ; 
 int ENE_FW_SAMPLE_SPACE ; 
 int ENE_FW_SMPL_BUF_FAN ; 
 int ENE_FW_SMPL_BUF_FAN_MSK ; 
 int ENE_FW_SMPL_BUF_FAN_PLS ; 
 int ENE_IRQ_RX ; 
 int ENE_IRQ_TX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct ene_device*) ; 
 int FUNC4 (struct ene_device*,int) ; 
 int FUNC5 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 
 int sample_period ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *data)
{
	u16 hw_value, reg;
	int hw_sample, irq_status;
	bool pulse;
	unsigned long flags;
	irqreturn_t retval = IRQ_NONE;
	struct ene_device *dev = (struct ene_device *)data;
	struct ir_raw_event ev = {};

	FUNC11(&dev->hw_lock, flags);

	FUNC2("ISR called");
	FUNC6(dev);
	irq_status = FUNC3(dev);

	if (!irq_status)
		goto unlock;

	retval = IRQ_HANDLED;

	if (irq_status & ENE_IRQ_TX) {
		FUNC2("TX interrupt");
		if (!dev->hw_learning_and_tx_capable) {
			FUNC1("TX interrupt on unsupported device!");
			goto unlock;
		}
		FUNC8(dev);
	}

	if (!(irq_status & ENE_IRQ_RX))
		goto unlock;

	FUNC2("RX interrupt");

	if (dev->hw_learning_and_tx_capable)
		FUNC7(dev);

	/* On hardware that don't support extra buffer we need to trust
		the interrupt and not track the read pointer */
	if (!dev->hw_extra_buffer)
		dev->r_pointer = dev->w_pointer == 0 ? ENE_FW_PACKET_SIZE : 0;

	while (1) {

		reg = FUNC5(dev);

		FUNC2("next sample to read at: %04x", reg);
		if (!reg)
			break;

		hw_value = FUNC4(dev, reg);

		if (dev->rx_fan_input_inuse) {

			int offset = ENE_FW_SMPL_BUF_FAN - ENE_FW_SAMPLE_BUFFER;

			/* read high part of the sample */
			hw_value |= FUNC4(dev, reg + offset) << 8;
			pulse = hw_value & ENE_FW_SMPL_BUF_FAN_PLS;

			/* clear space bit, and other unused bits */
			hw_value &= ENE_FW_SMPL_BUF_FAN_MSK;
			hw_sample = hw_value * ENE_FW_SAMPLE_PERIOD_FAN;

		} else {
			pulse = !(hw_value & ENE_FW_SAMPLE_SPACE);
			hw_value &= ~ENE_FW_SAMPLE_SPACE;
			hw_sample = hw_value * sample_period;

			if (dev->rx_period_adjust) {
				hw_sample *= 100;
				hw_sample /= (100 + dev->rx_period_adjust);
			}
		}

		if (!dev->hw_extra_buffer && !hw_sample) {
			dev->r_pointer = dev->w_pointer;
			continue;
		}

		FUNC1("RX: %d (%s)", hw_sample, pulse ? "pulse" : "space");

		ev.duration = FUNC0(hw_sample);
		ev.pulse = pulse;
		FUNC10(dev->rdev, &ev);
	}

	FUNC9(dev->rdev);
unlock:
	FUNC12(&dev->hw_lock, flags);
	return retval;
}
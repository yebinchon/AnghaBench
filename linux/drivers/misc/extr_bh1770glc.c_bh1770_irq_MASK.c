#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bh1770_chip {int lux_wait_result; int int_mode_prox; size_t prox_rate_threshold; int int_mode_lux; int /*<<< orphan*/  prox_work; int /*<<< orphan*/  mutex; TYPE_2__* client; int /*<<< orphan*/  lux_threshold_lo; int /*<<< orphan*/  lux_threshold_hi; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH1770_ALS_PS_STATUS ; 
 int /*<<< orphan*/  BH1770_INTERRUPT ; 
 int BH1770_INT_ALS_DATA ; 
 int BH1770_INT_ALS_INT ; 
 int BH1770_INT_LEDS_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct bh1770_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct bh1770_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bh1770_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* prox_rates_ms ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *data)
{
	struct bh1770_chip *chip = data;
	int status;
	int rate = 0;

	FUNC7(&chip->mutex);
	status = FUNC4(chip->client, BH1770_ALS_PS_STATUS);

	/* Acknowledge interrupt by reading this register */
	FUNC4(chip->client, BH1770_INTERRUPT);

	/*
	 * Check if there is fresh data available for als.
	 * If this is the very first data, update thresholds after that.
	 */
	if (status & BH1770_INT_ALS_DATA) {
		FUNC0(chip);
		if (FUNC11(chip->lux_wait_result)) {
			chip->lux_wait_result = false;
			FUNC12(&chip->wait);
			FUNC1(chip,
						chip->lux_threshold_hi,
						chip->lux_threshold_lo);
		}
	}

	/* Disable interrupt logic to guarantee acknowledgement */
	FUNC5(chip->client, BH1770_INTERRUPT,
				  (0 << 1) | (0 << 0));

	if ((status & BH1770_INT_ALS_INT))
		FUNC10(&chip->client->dev.kobj, NULL, "lux0_input");

	if (chip->int_mode_prox && (status & BH1770_INT_LEDS_INT)) {
		rate = prox_rates_ms[chip->prox_rate_threshold];
		FUNC2(chip);
	}

	/* Re-enable interrupt logic */
	FUNC5(chip->client, BH1770_INTERRUPT,
				  (chip->int_mode_lux << 1) |
				  (chip->int_mode_prox << 0));
	FUNC8(&chip->mutex);

	/*
	 * Can't cancel work while keeping mutex since the work uses the
	 * same mutex.
	 */
	if (rate) {
		/*
		 * Simulate missing no-proximity interrupt 50ms after the
		 * next expected interrupt time.
		 */
		FUNC3(&chip->prox_work);
		FUNC9(&chip->prox_work,
				FUNC6(rate + 50));
	}
	return IRQ_HANDLED;
}
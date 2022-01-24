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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct apds990x_chip {scalar_t__ lux_clear; scalar_t__ lux_ir; scalar_t__ again_meas; scalar_t__ again_next; int lux_wait_fresh_res; scalar_t__ a_max_result; scalar_t__ prox_data; scalar_t__ prox_thres; int /*<<< orphan*/  mutex; TYPE_1__* client; int /*<<< orphan*/  prox_continuous_mode; scalar_t__ prox_en; int /*<<< orphan*/  wait; int /*<<< orphan*/  lux_raw; int /*<<< orphan*/  lux; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS990X_CDATAL ; 
 int /*<<< orphan*/  APDS990X_IRDATAL ; 
 int /*<<< orphan*/  APDS990X_PDATAL ; 
 int /*<<< orphan*/  APDS990X_STATUS ; 
 int APDS990X_ST_AINT ; 
 int APDS990X_ST_PINT ; 
 scalar_t__ APDS_PROX_RANGE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct apds990x_chip*,int) ; 
 scalar_t__ FUNC1 (struct apds990x_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct apds990x_chip*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct apds990x_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct apds990x_chip*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct apds990x_chip*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *data)
{
	struct apds990x_chip *chip = data;
	u8 status;

	FUNC3(chip, APDS990X_STATUS, &status);
	FUNC0(chip, status);

	FUNC6(&chip->mutex);
	if (!FUNC8(&chip->client->dev)) {
		if (status & APDS990X_ST_AINT) {
			FUNC4(chip, APDS990X_CDATAL,
					&chip->lux_clear);
			FUNC4(chip, APDS990X_IRDATAL,
					&chip->lux_ir);
			/* Store used gain for calculations */
			chip->again_meas = chip->again_next;

			chip->lux_raw = FUNC2(chip,
							chip->lux_clear,
							chip->lux_ir);

			if (FUNC1(chip) == 0) {
				/* Result is valid */
				chip->lux = chip->lux_raw;
				chip->lux_wait_fresh_res = false;
				FUNC10(&chip->wait);
				FUNC9(&chip->client->dev.kobj,
					NULL, "lux0_input");
			}
		}

		if ((status & APDS990X_ST_PINT) && chip->prox_en) {
			u16 clr_ch;

			FUNC4(chip, APDS990X_CDATAL, &clr_ch);
			/*
			 * If ALS channel is saturated at min gain,
			 * proximity gives false posivite values.
			 * Just ignore them.
			 */
			if (chip->again_meas == 0 &&
				clr_ch == chip->a_max_result)
				chip->prox_data = 0;
			else
				FUNC4(chip,
						APDS990X_PDATAL,
						&chip->prox_data);

			FUNC5(chip, chip->prox_data);
			if (chip->prox_data < chip->prox_thres)
				chip->prox_data = 0;
			else if (!chip->prox_continuous_mode)
				chip->prox_data = APDS_PROX_RANGE;
			FUNC9(&chip->client->dev.kobj,
				NULL, "prox0_raw");
		}
	}
	FUNC7(&chip->mutex);
	return IRQ_HANDLED;
}
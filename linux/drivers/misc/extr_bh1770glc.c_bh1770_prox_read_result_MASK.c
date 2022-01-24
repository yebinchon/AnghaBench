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
typedef  int /*<<< orphan*/  u8 ;
struct bh1770_chip {int prox_threshold_hw; scalar_t__ lux_data_raw; int prox_force_update; scalar_t__ prox_persistence_counter; scalar_t__ prox_persistence; TYPE_2__* client; int /*<<< orphan*/  prox_data; int /*<<< orphan*/  prox_abs_thres; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH1770_PS_DATA_LED1 ; 
 int ENODATA ; 
 int /*<<< orphan*/  PROX_ABOVE_THRESHOLD ; 
 int /*<<< orphan*/  PROX_BELOW_THRESHOLD ; 
 scalar_t__ PROX_IGNORE_LUX_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct bh1770_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bh1770_chip*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct bh1770_chip *chip)
{
	int ret;
	bool above;
	u8 mode;

	ret = FUNC2(chip->client, BH1770_PS_DATA_LED1);
	if (ret < 0)
		goto out;

	if (ret > chip->prox_threshold_hw)
		above = true;
	else
		above = false;

	/*
	 * when ALS levels goes above limit, proximity result may be
	 * false proximity. Thus ignore the result. With real proximity
	 * there is a shadow causing low als levels.
	 */
	if (chip->lux_data_raw > PROX_IGNORE_LUX_LIMIT)
		ret = 0;

	chip->prox_data = FUNC1(chip, ret);

	/* Strong proximity level or force mode requires immediate response */
	if (chip->prox_data >= chip->prox_abs_thres ||
	    chip->prox_force_update)
		chip->prox_persistence_counter = chip->prox_persistence;

	chip->prox_force_update = false;

	/* Persistence filttering to reduce false proximity events */
	if (FUNC3(above)) {
		if (chip->prox_persistence_counter < chip->prox_persistence) {
			chip->prox_persistence_counter++;
			ret = -ENODATA;
		} else {
			mode = PROX_ABOVE_THRESHOLD;
			ret = 0;
		}
	} else {
		chip->prox_persistence_counter = 0;
		mode = PROX_BELOW_THRESHOLD;
		chip->prox_data = 0;
		ret = 0;
	}

	/* Set proximity detection rate based on above or below value */
	if (ret == 0) {
		FUNC0(chip, mode);
		FUNC4(&chip->client->dev.kobj, NULL, "prox0_raw");
	}
out:
	return ret;
}
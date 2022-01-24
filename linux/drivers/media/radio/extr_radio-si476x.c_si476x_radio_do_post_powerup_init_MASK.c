#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct si476x_radio {TYPE_1__* core; } ;
typedef  enum si476x_func { ____Placeholder_si476x_func } si476x_func ;
struct TYPE_3__ {int /*<<< orphan*/  regmap; int /*<<< orphan*/  diversity_mode; } ;

/* Variables and functions */
 int SI476X_FUNC_FM_RECEIVER ; 
 int /*<<< orphan*/  SI476X_PROP_AUDIO_DEEMPHASIS ; 
 int /*<<< orphan*/  SI476X_PROP_AUDIO_PWR_LINE_FILTER ; 
 int /*<<< orphan*/  SI476X_PROP_DIGITAL_IO_INPUT_SAMPLE_RATE ; 
 int /*<<< orphan*/  SI476X_PROP_DIGITAL_IO_OUTPUT_FORMAT ; 
 int /*<<< orphan*/  SI476X_PROP_FM_RDS_CONFIG ; 
 int /*<<< orphan*/  SI476X_PROP_FM_RDS_INTERRUPT_SOURCE ; 
 int /*<<< orphan*/  SI476X_PROP_INT_CTL_ENABLE ; 
 int /*<<< orphan*/  SI476X_PROP_VALID_MAX_TUNE_ERROR ; 
 int /*<<< orphan*/  SI476X_PROP_VALID_RSSI_THRESHOLD ; 
 int /*<<< orphan*/  SI476X_PROP_VALID_SNR_THRESHOLD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct si476x_radio*,int) ; 

__attribute__((used)) static int FUNC4(struct si476x_radio *radio,
					     enum si476x_func func)
{
	int err;

	/* regcache_mark_dirty(radio->core->regmap); */
	err = FUNC0(radio->core->regmap,
				   SI476X_PROP_DIGITAL_IO_INPUT_SAMPLE_RATE,
				   SI476X_PROP_DIGITAL_IO_OUTPUT_FORMAT);
	if (err < 0)
		return err;

	err = FUNC0(radio->core->regmap,
				   SI476X_PROP_AUDIO_DEEMPHASIS,
				   SI476X_PROP_AUDIO_PWR_LINE_FILTER);
	if (err < 0)
		return err;

	err = FUNC0(radio->core->regmap,
				   SI476X_PROP_INT_CTL_ENABLE,
				   SI476X_PROP_INT_CTL_ENABLE);
	if (err < 0)
		return err;

	/*
	 * Is there any point in restoring SNR and the like
	 * when switching between AM/FM?
	 */
	err = FUNC0(radio->core->regmap,
				   SI476X_PROP_VALID_MAX_TUNE_ERROR,
				   SI476X_PROP_VALID_MAX_TUNE_ERROR);
	if (err < 0)
		return err;

	err = FUNC0(radio->core->regmap,
				   SI476X_PROP_VALID_SNR_THRESHOLD,
				   SI476X_PROP_VALID_RSSI_THRESHOLD);
	if (err < 0)
		return err;

	if (func == SI476X_FUNC_FM_RECEIVER) {
		if (FUNC2(radio->core)) {
			err = FUNC1(radio->core,
								 radio->core->diversity_mode);
			if (err < 0)
				return err;
		}

		err = FUNC0(radio->core->regmap,
					   SI476X_PROP_FM_RDS_INTERRUPT_SOURCE,
					   SI476X_PROP_FM_RDS_CONFIG);
		if (err < 0)
			return err;
	}

	return FUNC3(radio, func);

}
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
typedef  int /*<<< orphan*/  u8 ;
struct mxl111sf_state {int dummy; } ;

/* Variables and functions */
 unsigned int MPEG_SER_MSB_FIRST_ENABLED ; 
 unsigned int TSIF_INPUT_PARALLEL ; 
 unsigned int TSIF_NORMAL ; 
 int /*<<< orphan*/  V6_ENABLE_PIN_MUX ; 
 int /*<<< orphan*/  V6_INVERTED_CLK_PHASE ; 
 int /*<<< orphan*/  V6_INVERTED_MPEG_SYNC ; 
 int /*<<< orphan*/  V6_INVERTED_MPEG_VALID ; 
 int /*<<< orphan*/  V6_MPEG_INOUT_BIT_ORDER_CTRL_REG ; 
 int /*<<< orphan*/  V6_MPEG_IN_CLK_INV_REG ; 
 int /*<<< orphan*/  V6_MPEG_IN_CTRL_REG ; 
 int /*<<< orphan*/  V6_MPEG_IN_DATA_PARALLEL ; 
 int /*<<< orphan*/  V6_MPEG_IN_DATA_SERIAL ; 
 int /*<<< orphan*/  V6_MPEG_SER_MSB_FIRST ; 
 int /*<<< orphan*/  V6_PIN_MUX_MODE_REG ; 
 int FUNC0 (struct mxl111sf_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mxl111sf_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct mxl111sf_state *state,
			    unsigned int parallel_serial,
			    unsigned int msb_lsb_1st,
			    unsigned int clock_phase,
			    unsigned int mpeg_valid_pol,
			    unsigned int mpeg_sync_pol)
{
	int ret;
	u8 mode, tmp;

	FUNC2("(%u,%u,%u,%u,%u)", parallel_serial, msb_lsb_1st,
		  clock_phase, mpeg_valid_pol, mpeg_sync_pol);

	/* Enable PIN MUX */
	ret = FUNC1(state, V6_PIN_MUX_MODE_REG, V6_ENABLE_PIN_MUX);
	FUNC3(ret);

	/* Configure MPEG Clock phase */
	FUNC0(state, V6_MPEG_IN_CLK_INV_REG, &mode);

	if (clock_phase == TSIF_NORMAL)
		mode &= ~V6_INVERTED_CLK_PHASE;
	else
		mode |= V6_INVERTED_CLK_PHASE;

	ret = FUNC1(state, V6_MPEG_IN_CLK_INV_REG, mode);
	FUNC3(ret);

	/* Configure data input mode, MPEG Valid polarity, MPEG Sync polarity
	 * Get current configuration */
	ret = FUNC0(state, V6_MPEG_IN_CTRL_REG, &mode);
	FUNC3(ret);

	/* Data Input mode */
	if (parallel_serial == TSIF_INPUT_PARALLEL) {
		/* Disable serial mode */
		mode &= ~V6_MPEG_IN_DATA_SERIAL;

		/* Enable Parallel mode */
		mode |= V6_MPEG_IN_DATA_PARALLEL;
	} else {
		/* Disable Parallel mode */
		mode &= ~V6_MPEG_IN_DATA_PARALLEL;

		/* Enable Serial Mode */
		mode |= V6_MPEG_IN_DATA_SERIAL;

		/* If serial interface is chosen, configure
		   MSB or LSB order in transmission */
		ret = FUNC0(state,
					V6_MPEG_INOUT_BIT_ORDER_CTRL_REG,
					&tmp);
		FUNC3(ret);

		if (msb_lsb_1st == MPEG_SER_MSB_FIRST_ENABLED)
			tmp |= V6_MPEG_SER_MSB_FIRST;
		else
			tmp &= ~V6_MPEG_SER_MSB_FIRST;

		ret = FUNC1(state,
					 V6_MPEG_INOUT_BIT_ORDER_CTRL_REG,
					 tmp);
		FUNC3(ret);
	}

	/* MPEG Sync polarity */
	if (mpeg_sync_pol == TSIF_NORMAL)
		mode &= ~V6_INVERTED_MPEG_SYNC;
	else
		mode |= V6_INVERTED_MPEG_SYNC;

	/* MPEG Valid polarity */
	if (mpeg_valid_pol == 0)
		mode &= ~V6_INVERTED_MPEG_VALID;
	else
		mode |= V6_INVERTED_MPEG_VALID;

	ret = FUNC1(state, V6_MPEG_IN_CTRL_REG, mode);
	FUNC3(ret);

	return ret;
}
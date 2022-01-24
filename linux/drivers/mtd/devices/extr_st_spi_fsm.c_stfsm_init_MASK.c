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
struct stfsm {scalar_t__ base; } ;

/* Variables and functions */
 int SEQ_CFG_SWRESET ; 
 int SPI_CFG_DEFAULT_CS_SETUPHOLD ; 
 int SPI_CFG_DEFAULT_DATA_HOLD ; 
 int SPI_CFG_DEFAULT_MIN_CS_HIGH ; 
 int SPI_CFG_DEVICE_ST ; 
 scalar_t__ SPI_CONFIGDATA ; 
 scalar_t__ SPI_FAST_SEQ_CFG ; 
 int /*<<< orphan*/  SPI_MODESELECT_FSM ; 
 scalar_t__ SPI_PROGRAM_ERASE_TIME ; 
 scalar_t__ SPI_STATUS_WR_TIME_REG ; 
 int STFSM_DEFAULT_WR_TIME ; 
 int /*<<< orphan*/  STFSM_FLASH_SAFE_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC1 (struct stfsm*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stfsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct stfsm *fsm)
{
	int ret;

	/* Perform a soft reset of the FSM controller */
	FUNC4(SEQ_CFG_SWRESET, fsm->base + SPI_FAST_SEQ_CFG);
	FUNC3(1);
	FUNC4(0, fsm->base + SPI_FAST_SEQ_CFG);

	/* Set clock to 'safe' frequency initially */
	FUNC1(fsm, STFSM_FLASH_SAFE_FREQ);

	/* Switch to FSM */
	ret = FUNC2(fsm, SPI_MODESELECT_FSM);
	if (ret)
		return ret;

	/* Set timing parameters */
	FUNC4(SPI_CFG_DEVICE_ST            |
	       SPI_CFG_DEFAULT_MIN_CS_HIGH  |
	       SPI_CFG_DEFAULT_CS_SETUPHOLD |
	       SPI_CFG_DEFAULT_DATA_HOLD,
	       fsm->base + SPI_CONFIGDATA);
	FUNC4(STFSM_DEFAULT_WR_TIME, fsm->base + SPI_STATUS_WR_TIME_REG);

	/*
	 * Set the FSM 'WAIT' delay to the minimum workable value.  Note, for
	 * our purposes, the WAIT instruction is used purely to achieve
	 * "sequence validity" rather than actually implement a delay.
	 */
	FUNC4(0x00000001, fsm->base + SPI_PROGRAM_ERASE_TIME);

	/* Clear FIFO, just in case */
	FUNC0(fsm);

	return 0;
}
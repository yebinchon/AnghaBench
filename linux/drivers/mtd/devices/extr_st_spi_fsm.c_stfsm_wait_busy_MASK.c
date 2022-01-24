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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct stfsm_seq {int* seq_opc; int /*<<< orphan*/  seq_cfg; } ;
struct stfsm {int configuration; int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 int CFG_S25FL_CHECK_ERROR_FLAGS ; 
 unsigned long FLASH_MAX_BUSY_WAIT ; 
 int FLASH_STATUS_BUSY ; 
 int /*<<< orphan*/  FLASH_STATUS_TIMEOUT ; 
 int S25FL_STATUS_E_ERR ; 
 int S25FL_STATUS_P_ERR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SEQ_OPC_PADS_1 ; 
 int /*<<< orphan*/  SPINOR_OP_RDSR ; 
 scalar_t__ SPI_FAST_SEQ_CFG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct stfsm*,struct stfsm_seq*) ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*,int*,int) ; 
 struct stfsm_seq stfsm_seq_read_status_fifo ; 
 int /*<<< orphan*/  FUNC6 (struct stfsm*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint8_t FUNC9(struct stfsm *fsm)
{
	struct stfsm_seq *seq = &stfsm_seq_read_status_fifo;
	unsigned long deadline;
	uint32_t status;
	int timeout = 0;

	/* Use RDRS1 */
	seq->seq_opc[0] = (SEQ_OPC_PADS_1 |
			   FUNC0(8) |
			   FUNC1(SPINOR_OP_RDSR));

	/* Load read_status sequence */
	FUNC4(fsm, seq);

	/*
	 * Repeat until busy bit is deasserted, or timeout, or error (S25FLxxxS)
	 */
	deadline = jiffies + FLASH_MAX_BUSY_WAIT;
	while (!timeout) {
		if (FUNC7(jiffies, deadline))
			timeout = 1;

		FUNC6(fsm);

		FUNC5(fsm, &status, 4);

		if ((status & FLASH_STATUS_BUSY) == 0)
			return 0;

		if ((fsm->configuration & CFG_S25FL_CHECK_ERROR_FLAGS) &&
		    ((status & S25FL_STATUS_P_ERR) ||
		     (status & S25FL_STATUS_E_ERR)))
			return (uint8_t)(status & 0xff);

		if (!timeout)
			/* Restart */
			FUNC8(seq->seq_cfg, fsm->base + SPI_FAST_SEQ_CFG);

		FUNC2();
	}

	FUNC3(fsm->dev, "timeout on wait_busy\n");

	return FLASH_STATUS_TIMEOUT;
}
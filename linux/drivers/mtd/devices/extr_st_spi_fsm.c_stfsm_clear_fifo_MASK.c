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
typedef  int uint32_t ;
struct stfsm_seq {int dummy; } ;
struct stfsm {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPI_FAST_SEQ_DATA_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC4 (struct stfsm*,struct stfsm_seq const*) ; 
 struct stfsm_seq stfsm_seq_load_fifo_byte ; 
 int /*<<< orphan*/  FUNC5 (struct stfsm*) ; 

__attribute__((used)) static void FUNC6(struct stfsm *fsm)
{
	const struct stfsm_seq *seq = &stfsm_seq_load_fifo_byte;
	uint32_t words, i;

	/* 1. Clear any 32-bit words */
	words = FUNC3(fsm);
	if (words) {
		for (i = 0; i < words; i++)
			FUNC2(fsm->base + SPI_FAST_SEQ_DATA_REG);
		FUNC0(fsm->dev, "cleared %d words from FIFO\n", words);
	}

	/*
	 * 2. Clear any remaining bytes
	 *    - Load the FIFO, one byte at a time, until a complete 32-bit word
	 *      is available.
	 */
	for (i = 0, words = 0; i < 4 && !words; i++) {
		FUNC4(fsm, seq);
		FUNC5(fsm);
		words = FUNC3(fsm);
	}

	/*    - A single word must be available now */
	if (words != 1) {
		FUNC1(fsm->dev, "failed to clear bytes from the data FIFO\n");
		return;
	}

	/*    - Read the 32-bit word */
	FUNC2(fsm->base + SPI_FAST_SEQ_DATA_REG);

	FUNC0(fsm->dev, "cleared %d byte(s) from the data FIFO\n", 4 - i);
}
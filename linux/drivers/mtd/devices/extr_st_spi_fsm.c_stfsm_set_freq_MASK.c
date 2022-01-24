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
struct stfsm {int fifo_dir_delay; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ SPI_CLOCKDIV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct stfsm *fsm, uint32_t spi_freq)
{
	uint32_t emi_freq;
	uint32_t clk_div;

	emi_freq = FUNC1(fsm->clk);

	/*
	 * Calculate clk_div - values between 2 and 128
	 * Multiple of 2, rounded up
	 */
	clk_div = 2 * FUNC0(emi_freq, 2 * spi_freq);
	if (clk_div < 2)
		clk_div = 2;
	else if (clk_div > 128)
		clk_div = 128;

	/*
	 * Determine a suitable delay for the IP to complete a change of
	 * direction of the FIFO. The required delay is related to the clock
	 * divider used. The following heuristics are based on empirical tests,
	 * using a 100MHz EMI clock.
	 */
	if (clk_div <= 4)
		fsm->fifo_dir_delay = 0;
	else if (clk_div <= 10)
		fsm->fifo_dir_delay = 1;
	else
		fsm->fifo_dir_delay = FUNC0(clk_div, 10);

	FUNC2(fsm->dev, "emi_clk = %uHZ, spi_freq = %uHZ, clk_div = %u\n",
		emi_freq, spi_freq, clk_div);

	FUNC3(clk_div, fsm->base + SPI_CLOCKDIV);
}
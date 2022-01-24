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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int LCR_BIT5 ; 
 int LCR_DLAB ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int MCR_DTR ; 
 int MCR_OUT1 ; 
 int MCR_OUT2 ; 
 int MCR_RTS ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(int iobase)
{
	FUNC9(0, FUNC2(iobase));
	FUNC9(LCR_DLAB | LCR_BIT5, FUNC3(iobase));
	FUNC9(1, FUNC0(iobase));
	FUNC9(0, FUNC1(iobase));

	FUNC9(LCR_BIT5, FUNC3(iobase));
	FUNC8(FUNC4(iobase));
	FUNC8(FUNC6(iobase));
	/* turn off FPGA supply voltage */
	FUNC9(MCR_OUT1 | MCR_OUT2, FUNC5(iobase));
	FUNC7(100);
	/* turn on FPGA supply voltage again */
	FUNC9(MCR_DTR | MCR_RTS | MCR_OUT1 | MCR_OUT2, FUNC5(iobase));
	FUNC7(100);
}
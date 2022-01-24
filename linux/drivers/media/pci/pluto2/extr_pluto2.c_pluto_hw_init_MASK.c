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
struct pluto {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MISC_ALED ; 
 int /*<<< orphan*/  PID0_END ; 
 int /*<<< orphan*/  REG_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC2 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC3 (struct pluto*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pluto*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pluto*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pluto*) ; 

__attribute__((used)) static int FUNC7(struct pluto *pluto)
{
	FUNC3(pluto, 1);

	/* set automatic LED control by FPGA */
	FUNC5(pluto, REG_MISC, MISC_ALED, MISC_ALED);

	/* set data endianness */
#ifdef __LITTLE_ENDIAN
	pluto_rw(pluto, REG_PIDn(0), PID0_END, PID0_END);
#else
	FUNC5(pluto, FUNC0(0), PID0_END, 0);
#endif
	/* map DMA and set address */
	FUNC1(pluto);
	FUNC6(pluto);

	/* enable interrupts */
	FUNC2(pluto);

	/* reset TS logic */
	FUNC4(pluto, 1);

	return 0;
}
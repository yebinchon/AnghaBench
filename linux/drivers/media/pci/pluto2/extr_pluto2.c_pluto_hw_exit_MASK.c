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
 int MISC_ALED ; 
 int MISC_LED0 ; 
 int MISC_LED1 ; 
 int /*<<< orphan*/  REG_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC1 (struct pluto*) ; 
 int /*<<< orphan*/  FUNC2 (struct pluto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pluto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pluto*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct pluto *pluto)
{
	/* disable interrupts */
	FUNC0(pluto);

	FUNC3(pluto, 0);

	/* LED: disable automatic control, enable yellow, disable green */
	FUNC4(pluto, REG_MISC, MISC_ALED | MISC_LED1 | MISC_LED0, MISC_LED1);

	/* unmap DMA */
	FUNC1(pluto);

	FUNC2(pluto, 0);
}
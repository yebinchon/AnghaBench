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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XIRCREG2_GPR2 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(unsigned int ioaddr)
{
    unsigned d;

    FUNC1(XIRCREG2_GPR2, 4|0); /* drive MDCK low */
    FUNC2(1);
    d = FUNC0(XIRCREG2_GPR2); /* read MDIO */
    FUNC1(XIRCREG2_GPR2, 4|1); /* drive MDCK high again */
    FUNC2(1);
    return d & 0x20; /* read MDIO */
}
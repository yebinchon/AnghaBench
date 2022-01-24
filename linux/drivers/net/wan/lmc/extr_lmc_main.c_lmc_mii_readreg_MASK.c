#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lmc_device; } ;
typedef  TYPE_1__ lmc_softc_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  csr_9 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

unsigned FUNC5 (lmc_softc_t * const sc, unsigned devaddr, unsigned regno) /*fold00*/
{
    int i;
    int command = (0xf6 << 10) | (devaddr << 5) | regno;
    int retval = 0;

    FUNC4(sc->lmc_device, "lmc_mii_readreg in");

    FUNC2 (sc);

    FUNC4(sc->lmc_device, "lmc_mii_readreg: done sync");

    for (i = 15; i >= 0; i--)
    {
        int dataval = (command & (1 << i)) ? 0x20000 : 0;

        FUNC1 (sc, csr_9, dataval);
        FUNC3 ();
        /* __SLOW_DOWN_IO; */
        FUNC1 (sc, csr_9, dataval | 0x10000);
        FUNC3 ();
        /* __SLOW_DOWN_IO; */
    }

    FUNC4(sc->lmc_device, "lmc_mii_readreg: done1");

    for (i = 19; i > 0; i--)
    {
        FUNC1 (sc, csr_9, 0x40000);
        FUNC3 ();
        /* __SLOW_DOWN_IO; */
        retval = (retval << 1) | ((FUNC0 (sc, csr_9) & 0x80000) ? 1 : 0);
        FUNC1 (sc, csr_9, 0x40000 | 0x10000);
        FUNC3 ();
        /* __SLOW_DOWN_IO; */
    }

    FUNC4(sc->lmc_device, "lmc_mii_readreg out");

    return (retval >> 1) & 0xffff;
}
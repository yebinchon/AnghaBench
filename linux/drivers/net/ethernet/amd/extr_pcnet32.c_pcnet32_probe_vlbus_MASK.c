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
 int /*<<< orphan*/  PCNET32_TOTAL_SIZE ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(unsigned int *pcnet32_portlist)
{
	unsigned int *port, ioaddr;

	/* search for PCnet32 VLB cards at known addresses */
	for (port = pcnet32_portlist; (ioaddr = *port); port++) {
		if (FUNC3
		    (ioaddr, PCNET32_TOTAL_SIZE, "pcnet32_probe_vlbus")) {
			/* check if there is really a pcnet chip on that ioaddr */
			if ((FUNC0(ioaddr + 14) == 0x57) &&
			    (FUNC0(ioaddr + 15) == 0x57)) {
				FUNC1(ioaddr, 0, NULL);
			} else {
				FUNC2(ioaddr, PCNET32_TOTAL_SIZE);
			}
		}
	}
}
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
typedef  int uint ;
struct brcmf_sdio {int clkstate; } ;

/* Variables and functions */
#define  CLK_AVAIL 130 
#define  CLK_NONE 129 
#define  CLK_SDONLY 128 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_sdio*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_sdio*,int) ; 

__attribute__((used)) static int FUNC4(struct brcmf_sdio *bus, uint target, bool pendok)
{
#ifdef DEBUG
	uint oldstate = bus->clkstate;
#endif				/* DEBUG */

	FUNC0(SDIO, "Enter\n");

	/* Early exit if we're already there */
	if (bus->clkstate == target)
		return 0;

	switch (target) {
	case CLK_AVAIL:
		/* Make sure SD clock is available */
		if (bus->clkstate == CLK_NONE)
			FUNC3(bus, true);
		/* Now request HT Avail on the backplane */
		FUNC2(bus, true, pendok);
		break;

	case CLK_SDONLY:
		/* Remove HT request, or bring up SD clock */
		if (bus->clkstate == CLK_NONE)
			FUNC3(bus, true);
		else if (bus->clkstate == CLK_AVAIL)
			FUNC2(bus, false, false);
		else
			FUNC1("request for %d -> %d\n",
				  bus->clkstate, target);
		break;

	case CLK_NONE:
		/* Make sure to remove HT request */
		if (bus->clkstate == CLK_AVAIL)
			FUNC2(bus, false, false);
		/* Now remove the SD clock */
		FUNC3(bus, false);
		break;
	}
#ifdef DEBUG
	brcmf_dbg(SDIO, "%d -> %d\n", oldstate, bus->clkstate);
#endif				/* DEBUG */

	return 0;
}
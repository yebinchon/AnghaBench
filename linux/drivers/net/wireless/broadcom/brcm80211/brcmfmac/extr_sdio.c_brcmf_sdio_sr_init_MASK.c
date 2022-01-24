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
typedef  int u8 ;
struct brcmf_sdio {int sr_enabled; int /*<<< orphan*/  sdiodev; int /*<<< orphan*/  ci; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int SBSDIO_FORCE_HT ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_WAKEUPCTRL ; 
 int SBSDIO_FUNC1_WCTRL_ALPWAIT_SHIFT ; 
 int SBSDIO_FUNC1_WCTRL_HTWAIT_SHIFT ; 
 int SBSDIO_HT_AVAIL_REQ ; 
 int /*<<< orphan*/  SDIO_CCCR_BRCM_CARDCAP ; 
 int SDIO_CCCR_BRCM_CARDCAP_CMD14_EXT ; 
 int SDIO_CCCR_BRCM_CARDCAP_CMD14_SUPPORT ; 
 int SDIO_CCCR_BRCM_CARDCAP_CMD_NODEC ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC7(struct brcmf_sdio *bus)
{
	int err = 0;
	u8 val;
	u8 wakeupctrl;
	u8 cardcap;
	u8 chipclkcsr;

	FUNC1(TRACE, "Enter\n");

	if (FUNC0(bus->ci)) {
		wakeupctrl = SBSDIO_FUNC1_WCTRL_ALPWAIT_SHIFT;
		chipclkcsr = SBSDIO_HT_AVAIL_REQ;
	} else {
		wakeupctrl = SBSDIO_FUNC1_WCTRL_HTWAIT_SHIFT;
		chipclkcsr = SBSDIO_FORCE_HT;
	}

	if (FUNC3(bus)) {
		cardcap = SDIO_CCCR_BRCM_CARDCAP_CMD_NODEC;
	} else {
		cardcap = (SDIO_CCCR_BRCM_CARDCAP_CMD14_SUPPORT |
			   SDIO_CCCR_BRCM_CARDCAP_CMD14_EXT);
	}

	val = FUNC5(bus->sdiodev, SBSDIO_FUNC1_WAKEUPCTRL, &err);
	if (err) {
		FUNC2("error reading SBSDIO_FUNC1_WAKEUPCTRL\n");
		return;
	}
	val |= 1 << wakeupctrl;
	FUNC6(bus->sdiodev, SBSDIO_FUNC1_WAKEUPCTRL, val, &err);
	if (err) {
		FUNC2("error writing SBSDIO_FUNC1_WAKEUPCTRL\n");
		return;
	}

	/* Add CMD14 Support */
	FUNC4(bus->sdiodev, SDIO_CCCR_BRCM_CARDCAP,
			     cardcap,
			     &err);
	if (err) {
		FUNC2("error writing SDIO_CCCR_BRCM_CARDCAP\n");
		return;
	}

	FUNC6(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
			   chipclkcsr, &err);
	if (err) {
		FUNC2("error writing SBSDIO_FUNC1_CHIPCLKCSR\n");
		return;
	}

	/* set flag */
	bus->sr_enabled = true;
	FUNC1(INFO, "SR enabled\n");
}
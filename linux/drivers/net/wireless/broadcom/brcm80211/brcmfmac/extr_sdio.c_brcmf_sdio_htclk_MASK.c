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
typedef  int /*<<< orphan*/  u8 ;
struct brcmf_sdio {scalar_t__ clkstate; int /*<<< orphan*/  sdiodev; int /*<<< orphan*/  alp_only; scalar_t__ sr_enabled; } ;

/* Variables and functions */
 void* CLK_AVAIL ; 
 scalar_t__ CLK_PENDING ; 
 void* CLK_SDONLY ; 
 int EBADE ; 
 int PMU_MAX_TRANSITION_DLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBSDIO_ALP_AVAIL_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBSDIO_DEVCTL_CA_INT_ONLY ; 
 int /*<<< orphan*/  SBSDIO_DEVICE_CTL ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 int /*<<< orphan*/  SBSDIO_HT_AVAIL_REQ ; 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC6 (int) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct brcmf_sdio *bus, bool on, bool pendok)
{
	int err;
	u8 clkctl, clkreq, devctl;
	unsigned long timeout;

	FUNC2(SDIO, "Enter\n");

	clkctl = 0;

	if (bus->sr_enabled) {
		bus->clkstate = (on ? CLK_AVAIL : CLK_SDONLY);
		return 0;
	}

	if (on) {
		/* Request HT Avail */
		clkreq =
		    bus->alp_only ? SBSDIO_ALP_AVAIL_REQ : SBSDIO_HT_AVAIL_REQ;

		FUNC5(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
				   clkreq, &err);
		if (err) {
			FUNC3("HT Avail request error: %d\n", err);
			return -EBADE;
		}

		/* Check current status */
		clkctl = FUNC4(bus->sdiodev,
					   SBSDIO_FUNC1_CHIPCLKCSR, &err);
		if (err) {
			FUNC3("HT Avail read error: %d\n", err);
			return -EBADE;
		}

		/* Go to pending and await interrupt if appropriate */
		if (!FUNC1(clkctl, bus->alp_only) && pendok) {
			/* Allow only clock-available interrupt */
			devctl = FUNC4(bus->sdiodev,
						   SBSDIO_DEVICE_CTL, &err);
			if (err) {
				FUNC3("Devctl error setting CA: %d\n", err);
				return -EBADE;
			}

			devctl |= SBSDIO_DEVCTL_CA_INT_ONLY;
			FUNC5(bus->sdiodev, SBSDIO_DEVICE_CTL,
					   devctl, &err);
			FUNC2(SDIO, "CLKCTL: set PENDING\n");
			bus->clkstate = CLK_PENDING;

			return 0;
		} else if (bus->clkstate == CLK_PENDING) {
			/* Cancel CA-only interrupt filter */
			devctl = FUNC4(bus->sdiodev,
						   SBSDIO_DEVICE_CTL, &err);
			devctl &= ~SBSDIO_DEVCTL_CA_INT_ONLY;
			FUNC5(bus->sdiodev, SBSDIO_DEVICE_CTL,
					   devctl, &err);
		}

		/* Otherwise, wait here (polling) for HT Avail */
		timeout = jiffies +
			  FUNC6(PMU_MAX_TRANSITION_DLY/1000);
		while (!FUNC1(clkctl, bus->alp_only)) {
			clkctl = FUNC4(bus->sdiodev,
						   SBSDIO_FUNC1_CHIPCLKCSR,
						   &err);
			if (FUNC7(jiffies, timeout))
				break;
			else
				FUNC8(5000, 10000);
		}
		if (err) {
			FUNC3("HT Avail request error: %d\n", err);
			return -EBADE;
		}
		if (!FUNC1(clkctl, bus->alp_only)) {
			FUNC3("HT Avail timeout (%d): clkctl 0x%02x\n",
				  PMU_MAX_TRANSITION_DLY, clkctl);
			return -EBADE;
		}

		/* Mark clock available */
		bus->clkstate = CLK_AVAIL;
		FUNC2(SDIO, "CLKCTL: turned ON\n");

#if defined(DEBUG)
		if (!bus->alp_only) {
			if (SBSDIO_ALPONLY(clkctl))
				brcmf_err("HT Clock should be on\n");
		}
#endif				/* defined (DEBUG) */

	} else {
		clkreq = 0;

		if (bus->clkstate == CLK_PENDING) {
			/* Cancel CA-only interrupt filter */
			devctl = FUNC4(bus->sdiodev,
						   SBSDIO_DEVICE_CTL, &err);
			devctl &= ~SBSDIO_DEVCTL_CA_INT_ONLY;
			FUNC5(bus->sdiodev, SBSDIO_DEVICE_CTL,
					   devctl, &err);
		}

		bus->clkstate = CLK_SDONLY;
		FUNC5(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
				   clkreq, &err);
		FUNC2(SDIO, "CLKCTL: turned OFF\n");
		if (err) {
			FUNC3("Failed access turning clock off: %d\n",
				  err);
			return -EBADE;
		}
	}
	return 0;
}
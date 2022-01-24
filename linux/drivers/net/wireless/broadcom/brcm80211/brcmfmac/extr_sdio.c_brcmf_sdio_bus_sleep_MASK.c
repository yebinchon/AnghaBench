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
struct brcmf_sdio {int sleeping; scalar_t__ sr_enabled; int /*<<< orphan*/  sdiodev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_AVAIL ; 
 int /*<<< orphan*/  CLK_NONE ; 
 int /*<<< orphan*/  SBSDIO_ALP_AVAIL_REQ ; 
 int SBSDIO_CSR_MASK ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_sdio*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct brcmf_sdio*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC7(struct brcmf_sdio *bus, bool sleep, bool pendok)
{
	int err = 0;
	u8 clkcsr;

	FUNC0(SDIO, "Enter: request %s currently %s\n",
		  (sleep ? "SLEEP" : "WAKE"),
		  (bus->sleeping ? "SLEEP" : "WAKE"));

	/* If SR is enabled control bus state with KSO */
	if (bus->sr_enabled) {
		/* Done if we're already in the requested state */
		if (sleep == bus->sleeping)
			goto end;

		/* Going to sleep */
		if (sleep) {
			clkcsr = FUNC5(bus->sdiodev,
						   SBSDIO_FUNC1_CHIPCLKCSR,
						   &err);
			if ((clkcsr & SBSDIO_CSR_MASK) == 0) {
				FUNC0(SDIO, "no clock, set ALP\n");
				FUNC6(bus->sdiodev,
						   SBSDIO_FUNC1_CHIPCLKCSR,
						   SBSDIO_ALP_AVAIL_REQ, &err);
			}
			err = FUNC3(bus, false);
		} else {
			err = FUNC3(bus, true);
		}
		if (err) {
			FUNC1("error while changing bus sleep state %d\n",
				  err);
			goto done;
		}
	}

end:
	/* control clocks */
	if (sleep) {
		if (!bus->sr_enabled)
			FUNC2(bus, CLK_NONE, pendok);
	} else {
		FUNC2(bus, CLK_AVAIL, pendok);
		FUNC4(bus, true);
	}
	bus->sleeping = sleep;
	FUNC0(SDIO, "new state %s\n",
		  (sleep ? "SLEEP" : "WAKE"));
done:
	FUNC0(SDIO, "Exit: err=%d\n", err);
	return err;

}
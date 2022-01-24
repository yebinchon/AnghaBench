#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_5__ {scalar_t__ count; } ;
struct TYPE_4__ {scalar_t__ intrcount; scalar_t__ lastintrs; int /*<<< orphan*/  pollcnt; } ;
struct brcmf_sdio {scalar_t__ polltick; scalar_t__ pollrate; int dpc_triggered; scalar_t__ console_interval; scalar_t__ idletime; scalar_t__ clkstate; scalar_t__ idlecount; TYPE_3__* sdiodev; int /*<<< orphan*/  dpc_running; TYPE_2__ console; TYPE_1__ sdcnt; int /*<<< orphan*/  datawork; int /*<<< orphan*/  brcmf_wq; int /*<<< orphan*/  ipend; int /*<<< orphan*/  intr; scalar_t__ poll; int /*<<< orphan*/  sr_enabled; } ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  func1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ BRCMF_SDIOD_DATA ; 
 int /*<<< orphan*/  BRCMF_WD_POLL ; 
 scalar_t__ CLK_AVAIL ; 
 int INTR_STATUS_FUNC1 ; 
 int INTR_STATUS_FUNC2 ; 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  SDIO_CCCR_INTx ; 
 int /*<<< orphan*/  TIMER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_sdio*,int,int) ; 
 scalar_t__ FUNC4 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_sdio*,int) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct brcmf_sdio *bus)
{
	FUNC2(TIMER, "Enter\n");

	/* Poll period: check device if appropriate. */
	if (!bus->sr_enabled &&
	    bus->poll && (++bus->polltick >= bus->pollrate)) {
		u32 intstatus = 0;

		/* Reset poll tick */
		bus->polltick = 0;

		/* Check device if no interrupts */
		if (!bus->intr ||
		    (bus->sdcnt.intrcount == bus->sdcnt.lastintrs)) {

			if (!bus->dpc_triggered) {
				u8 devpend;

				FUNC10(bus->sdiodev->func1);
				devpend = FUNC6(bus->sdiodev,
						  SDIO_CCCR_INTx, NULL);
				FUNC11(bus->sdiodev->func1);
				intstatus = devpend & (INTR_STATUS_FUNC1 |
						       INTR_STATUS_FUNC2);
			}

			/* If there is something, make like the ISR and
				 schedule the DPC */
			if (intstatus) {
				bus->sdcnt.pollcnt++;
				FUNC1(&bus->ipend, 1);

				bus->dpc_triggered = true;
				FUNC8(bus->brcmf_wq, &bus->datawork);
			}
		}

		/* Update interrupt tracking */
		bus->sdcnt.lastintrs = bus->sdcnt.intrcount;
	}
#ifdef DEBUG
	/* Poll for console output periodically */
	if (bus->sdiodev->state == BRCMF_SDIOD_DATA && BRCMF_FWCON_ON() &&
	    bus->console_interval != 0) {
		bus->console.count += jiffies_to_msecs(BRCMF_WD_POLL);
		if (bus->console.count >= bus->console_interval) {
			bus->console.count -= bus->console_interval;
			sdio_claim_host(bus->sdiodev->func1);
			/* Make sure backplane clock is on */
			brcmf_sdio_bus_sleep(bus, false, false);
			if (brcmf_sdio_readconsole(bus) < 0)
				/* stop on error */
				bus->console_interval = 0;
			sdio_release_host(bus->sdiodev->func1);
		}
	}
#endif				/* DEBUG */

	/* On idle timeout clear activity flag and/or turn off clock */
	if (!bus->dpc_triggered) {
		FUNC9();
		if ((!bus->dpc_running) && (bus->idletime > 0) &&
		    (bus->clkstate == CLK_AVAIL)) {
			bus->idlecount++;
			if (bus->idlecount > bus->idletime) {
				FUNC2(SDIO, "idle\n");
				FUNC10(bus->sdiodev->func1);
				FUNC5(bus, false);
				bus->idlecount = 0;
				FUNC3(bus, true, false);
				FUNC11(bus->sdiodev->func1);
			}
		} else {
			bus->idlecount = 0;
		}
	} else {
		bus->idlecount = 0;
	}
}
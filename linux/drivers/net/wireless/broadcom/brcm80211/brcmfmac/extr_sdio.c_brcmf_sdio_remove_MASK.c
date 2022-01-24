#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct brcmf_sdio {struct brcmf_sdio* hdrbuf; struct brcmf_sdio* rxbuf; TYPE_1__* sdiodev; scalar_t__ ci; scalar_t__ brcmf_wq; int /*<<< orphan*/  datawork; int /*<<< orphan*/ * watchdog_tsk; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ settings; int /*<<< orphan*/  func1; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BRCMF_SDIOD_NOMEDIUM ; 
 int /*<<< orphan*/  CLK_AVAIL ; 
 int /*<<< orphan*/  CLK_NONE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_sdio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_sdio*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC16(struct brcmf_sdio *bus)
{
	FUNC2(TRACE, "Enter\n");

	if (bus) {
		/* Stop watchdog task */
		if (bus->watchdog_tsk) {
			FUNC15(SIGTERM, bus->watchdog_tsk, 1);
			FUNC11(bus->watchdog_tsk);
			bus->watchdog_tsk = NULL;
		}

		/* De-register interrupt handler */
		FUNC7(bus->sdiodev);

		FUNC3(bus->sdiodev->dev);

		FUNC8(&bus->datawork);
		if (bus->brcmf_wq)
			FUNC9(bus->brcmf_wq);

		if (bus->ci) {
			if (bus->sdiodev->state != BRCMF_SDIOD_NOMEDIUM) {
				FUNC13(bus->sdiodev->func1);
				FUNC6(bus, false);
				FUNC5(bus, CLK_AVAIL, false);
				/* Leave the device in state where it is
				 * 'passive'. This is done by resetting all
				 * necessary cores.
				 */
				FUNC12(20);
				FUNC1(bus->ci);
				FUNC5(bus, CLK_NONE, false);
				FUNC14(bus->sdiodev->func1);
			}
			FUNC0(bus->ci);
		}
		if (bus->sdiodev->settings)
			FUNC4(bus->sdiodev->settings);

		FUNC10(bus->rxbuf);
		FUNC10(bus->hdrbuf);
		FUNC10(bus);
	}

	FUNC2(TRACE, "Disconnected\n");
}
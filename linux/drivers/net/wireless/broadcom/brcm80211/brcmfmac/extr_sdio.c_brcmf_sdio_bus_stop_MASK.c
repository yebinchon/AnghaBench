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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {scalar_t__ state; int /*<<< orphan*/  func1; int /*<<< orphan*/  func2; struct brcmf_sdio* bus; } ;
struct brcmf_sdio {int rxskip; scalar_t__ rx_seq; scalar_t__ tx_seq; int /*<<< orphan*/  rxctl_lock; scalar_t__ rxlen; int /*<<< orphan*/  glomd; int /*<<< orphan*/  txq; int /*<<< orphan*/  ci; scalar_t__ hostintmask; int /*<<< orphan*/ * watchdog_tsk; struct brcmf_core* sdio_core; } ;
struct brcmf_core {scalar_t__ base; } ;
struct TYPE_2__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;

/* Variables and functions */
 scalar_t__ BRCMF_SDIOD_NOMEDIUM ; 
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  SBSDIO_FORCE_HT ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 int /*<<< orphan*/  SBSDIO_HT_AVAIL_REQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_sdio_dev*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct brcmf_bus* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  hostintmask ; 
 int /*<<< orphan*/  intstatus ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct device *dev)
{
	struct brcmf_bus *bus_if = FUNC12(dev);
	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
	struct brcmf_sdio *bus = sdiodev->bus;
	struct brcmf_core *core = bus->sdio_core;
	u32 local_hostintmask;
	u8 saveclk, bpreq;
	int err;

	FUNC2(TRACE, "Enter\n");

	if (bus->watchdog_tsk) {
		FUNC17(SIGTERM, bus->watchdog_tsk, 1);
		FUNC13(bus->watchdog_tsk);
		bus->watchdog_tsk = NULL;
	}

	if (sdiodev->state != BRCMF_SDIOD_NOMEDIUM) {
		FUNC14(sdiodev->func1);

		/* Enable clock for device interrupts */
		FUNC4(bus, false, false);

		/* Disable and clear interrupts at the chip level also */
		FUNC9(sdiodev, core->base + FUNC0(hostintmask),
				   0, NULL);

		local_hostintmask = bus->hostintmask;
		bus->hostintmask = 0;

		/* Force backplane clocks to assure F2 interrupt propagates */
		saveclk = FUNC7(sdiodev, SBSDIO_FUNC1_CHIPCLKCSR,
					    &err);
		if (!err) {
			bpreq = saveclk;
			bpreq |= FUNC1(bus->ci) ?
				SBSDIO_HT_AVAIL_REQ : SBSDIO_FORCE_HT;
			FUNC8(sdiodev,
					   SBSDIO_FUNC1_CHIPCLKCSR,
					   bpreq, &err);
		}
		if (err)
			FUNC3("Failed to force clock for F2: err %d\n",
				  err);

		/* Turn off the bus (F2), free any pending packets */
		FUNC2(INTR, "disable SDIO interrupts\n");
		FUNC15(sdiodev->func2);

		/* Clear any pending interrupts now that F2 is disabled */
		FUNC9(sdiodev, core->base + FUNC0(intstatus),
				   local_hostintmask, NULL);

		FUNC16(sdiodev->func1);
	}
	/* Clear the data packet queues */
	FUNC11(&bus->txq, true, NULL, NULL);

	/* Clear any held glomming stuff */
	FUNC10(bus->glomd);
	FUNC6(bus);

	/* Clear rx control and wake any waiters */
	FUNC18(&bus->rxctl_lock);
	bus->rxlen = 0;
	FUNC19(&bus->rxctl_lock);
	FUNC5(bus);

	/* Reset some F2 state stuff */
	bus->rxskip = false;
	bus->tx_seq = bus->rx_seq = 0;
}
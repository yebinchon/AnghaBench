#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct workqueue_struct {int dummy; } ;
struct brcmf_sdio_dev {int /*<<< orphan*/  dev; TYPE_1__* func1; TYPE_2__* func2; struct brcmf_sdio* bus; } ;
struct brcmf_sdio {int dpc_triggered; int dpc_running; int rxflow; int sr_enabled; int /*<<< orphan*/  idleclock; int /*<<< orphan*/  idletime; int /*<<< orphan*/  clkstate; struct brcmf_sdio_dev* sdiodev; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  roundup; scalar_t__ tx_hdrlen; int /*<<< orphan*/ * watchdog_tsk; int /*<<< orphan*/  watchdog_wait; int /*<<< orphan*/  timer; int /*<<< orphan*/  dcmd_resp_wait; int /*<<< orphan*/  ctrl_wait; int /*<<< orphan*/  txq_lock; int /*<<< orphan*/  rxctl_lock; struct workqueue_struct* brcmf_wq; int /*<<< orphan*/  datawork; scalar_t__ tx_seq; int /*<<< orphan*/  txminmax; int /*<<< orphan*/  rxbound; int /*<<< orphan*/  txbound; int /*<<< orphan*/  glom; } ;
struct brcmf_fw_request {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  cur_blksize; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_IDLE_ACTIVE ; 
 int /*<<< orphan*/  BRCMF_IDLE_INTERVAL ; 
 int /*<<< orphan*/  BRCMF_RXBOUND ; 
 int /*<<< orphan*/  BRCMF_TXBOUND ; 
 int /*<<< orphan*/  BRCMF_TXMINMAX ; 
 int /*<<< orphan*/  CLK_SDONLY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 scalar_t__ SDPCM_HWHDR_LEN ; 
 scalar_t__ SDPCM_SEQ_WRAP ; 
 scalar_t__ SDPCM_SWHDR_LEN ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 struct workqueue_struct* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct brcmf_fw_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_sdio_dataworker ; 
 int /*<<< orphan*/  brcmf_sdio_firmware_callback ; 
 struct brcmf_fw_request* FUNC6 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  brcmf_sdio_watchdog ; 
 int /*<<< orphan*/  brcmf_sdio_watchdog_thread ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_sdio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct brcmf_fw_request*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,struct brcmf_sdio*,char*,int /*<<< orphan*/ ) ; 
 struct brcmf_sdio* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_roundup ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct brcmf_sdio *FUNC25(struct brcmf_sdio_dev *sdiodev)
{
	int ret;
	struct brcmf_sdio *bus;
	struct workqueue_struct *wq;
	struct brcmf_fw_request *fwreq;

	FUNC3(TRACE, "Enter\n");

	/* Allocate private bus interface state */
	bus = FUNC16(sizeof(struct brcmf_sdio), GFP_ATOMIC);
	if (!bus)
		goto fail;

	bus->sdiodev = sdiodev;
	sdiodev->bus = bus;
	FUNC22(&bus->glom);
	bus->txbound = BRCMF_TXBOUND;
	bus->rxbound = BRCMF_RXBOUND;
	bus->txminmax = BRCMF_TXMINMAX;
	bus->tx_seq = SDPCM_SEQ_WRAP - 1;

	/* single-threaded workqueue */
	wq = FUNC2("brcmf_wq/%s", WQ_MEM_RECLAIM,
				     FUNC11(&sdiodev->func1->dev));
	if (!wq) {
		FUNC4("insufficient memory to create txworkqueue\n");
		goto fail;
	}
	FUNC9(sdiodev);
	FUNC0(&bus->datawork, brcmf_sdio_dataworker);
	bus->brcmf_wq = wq;

	/* attempt to attach to the dongle */
	if (!(FUNC7(bus))) {
		FUNC4("brcmf_sdio_probe_attach failed\n");
		goto fail;
	}

	FUNC23(&bus->rxctl_lock);
	FUNC23(&bus->txq_lock);
	FUNC13(&bus->ctrl_wait);
	FUNC13(&bus->dcmd_resp_wait);

	/* Set up the watchdog timer */
	FUNC24(&bus->timer, brcmf_sdio_watchdog, 0);
	/* Initialize watchdog thread */
	FUNC12(&bus->watchdog_wait);
	bus->watchdog_tsk = FUNC15(brcmf_sdio_watchdog_thread,
					bus, "brcmf_wdog/%s",
					FUNC11(&sdiodev->func1->dev));
	if (FUNC1(bus->watchdog_tsk)) {
		FUNC18("brcmf_watchdog thread failed to start\n");
		bus->watchdog_tsk = NULL;
	}
	/* Initialize DPC thread */
	bus->dpc_triggered = false;
	bus->dpc_running = false;

	/* default sdio bus header length for tx packet */
	bus->tx_hdrlen = SDPCM_HWHDR_LEN + SDPCM_SWHDR_LEN;

	/* Query the F2 block size, set roundup accordingly */
	bus->blocksize = bus->sdiodev->func2->cur_blksize;
	bus->roundup = FUNC17(max_roundup, bus->blocksize);

	FUNC19(bus->sdiodev->func1);

	/* Disable F2 to clear any intermediate frame state on the dongle */
	FUNC20(bus->sdiodev->func2);

	bus->rxflow = false;

	/* Done with backplane-dependent accesses, can drop clock... */
	FUNC10(bus->sdiodev, SBSDIO_FUNC1_CHIPCLKCSR, 0, NULL);

	FUNC21(bus->sdiodev->func1);

	/* ...and initialize clock/power states */
	bus->clkstate = CLK_SDONLY;
	bus->idletime = BRCMF_IDLE_INTERVAL;
	bus->idleclock = BRCMF_IDLE_ACTIVE;

	/* SR state */
	bus->sr_enabled = false;

	FUNC3(INFO, "completed!!\n");

	fwreq = FUNC6(bus);
	if (!fwreq) {
		ret = -ENOMEM;
		goto fail;
	}

	ret = FUNC5(sdiodev->dev, fwreq,
				     brcmf_sdio_firmware_callback);
	if (ret != 0) {
		FUNC4("async firmware request failed: %d\n", ret);
		FUNC14(fwreq);
		goto fail;
	}

	return bus;

fail:
	FUNC8(bus);
	return NULL;
}
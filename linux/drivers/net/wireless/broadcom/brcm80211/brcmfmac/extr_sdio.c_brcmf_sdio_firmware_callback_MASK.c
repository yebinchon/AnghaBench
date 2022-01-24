#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {TYPE_7__* func2; TYPE_6__* func1; int /*<<< orphan*/  dev; int /*<<< orphan*/  settings; TYPE_5__* bus_if; struct brcmf_sdio* bus; } ;
struct TYPE_16__ {scalar_t__ tickcnt; } ;
struct brcmf_sdio {int alp_only; scalar_t__ clkstate; int hostintmask; TYPE_10__* ci; int /*<<< orphan*/  sdiodev; TYPE_4__ sdcnt; struct brcmf_core* sdio_core; } ;
struct brcmf_fw_request {TYPE_3__* items; } ;
struct brcmf_core {scalar_t__ base; } ;
struct TYPE_13__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;
struct TYPE_19__ {struct device dev; } ;
struct TYPE_18__ {int device; } ;
struct TYPE_17__ {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; int /*<<< orphan*/ * ops; int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  len; void* data; } ;
struct TYPE_15__ {TYPE_2__ nv_data; struct firmware* binary; } ;
struct TYPE_12__ {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_SDIOD_DATA ; 
 size_t BRCMF_SDIO_FW_CODE ; 
 size_t BRCMF_SDIO_FW_NVRAM ; 
 scalar_t__ CLK_AVAIL ; 
 scalar_t__ CLK_NONE ; 
 int CY_43012_F2_WATERMARK ; 
 int CY_4373_F2_WATERMARK ; 
 int DEFAULT_F2_WATERMARK ; 
 int HOSTINTMASK ; 
 int /*<<< orphan*/  INFO ; 
 int SBSDIO_DEVCTL_F2WM_ENAB ; 
 int /*<<< orphan*/  SBSDIO_DEVICE_CTL ; 
 int SBSDIO_FORCE_HT ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_MESBUSYCTRL ; 
 int SBSDIO_HT_AVAIL_REQ ; 
 int SBSDIO_MESBUSYCTRL_ENAB ; 
 int /*<<< orphan*/  SBSDIO_WATERMARK ; 
#define  SDIO_DEVICE_ID_CYPRESS_43012 129 
#define  SDIO_DEVICE_ID_CYPRESS_4373 128 
 int SDPCM_PROT_VERSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SMB_DATA_VERSION_SHIFT ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_10__*) ; 
 scalar_t__ FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_sdio_bus_ops ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_sdio*,scalar_t__,int) ; 
 int FUNC10 (struct brcmf_sdio*,struct firmware const*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_sdio*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct brcmf_sdio_dev*) ; 
 int FUNC15 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcmf_sdio_dev*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 struct brcmf_bus* FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  hostintmask ; 
 int /*<<< orphan*/  FUNC21 (struct brcmf_fw_request*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*) ; 
 int FUNC24 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*) ; 
 int /*<<< orphan*/  tosbmailboxdata ; 

__attribute__((used)) static void FUNC26(struct device *dev, int err,
					 struct brcmf_fw_request *fwreq)
{
	struct brcmf_bus *bus_if = FUNC18(dev);
	struct brcmf_sdio_dev *sdiod = bus_if->bus_priv.sdio;
	struct brcmf_sdio *bus = sdiod->bus;
	struct brcmf_core *core = bus->sdio_core;
	const struct firmware *code;
	void *nvram;
	u32 nvram_len;
	u8 saveclk, bpreq;
	u8 devctl;

	FUNC5(TRACE, "Enter: dev=%s, err=%d\n", FUNC19(dev), err);

	if (err)
		goto fail;

	code = fwreq->items[BRCMF_SDIO_FW_CODE].binary;
	nvram = fwreq->items[BRCMF_SDIO_FW_NVRAM].nv_data.data;
	nvram_len = fwreq->items[BRCMF_SDIO_FW_NVRAM].nv_data.len;
	FUNC21(fwreq);

	/* try to download image and nvram to the dongle */
	bus->alp_only = true;
	err = FUNC10(bus, code, nvram, nvram_len);
	if (err)
		goto fail;
	bus->alp_only = false;

	/* Start the watchdog timer */
	bus->sdcnt.tickcnt = 0;
	FUNC12(bus, true);

	FUNC22(sdiod->func1);

	/* Make sure backplane clock is on, needed to generate F2 interrupt */
	FUNC9(bus, CLK_AVAIL, false);
	if (bus->clkstate != CLK_AVAIL)
		goto release;

	/* Force clocks on backplane to be sure F2 interrupt propagates */
	saveclk = FUNC15(sdiod, SBSDIO_FUNC1_CHIPCLKCSR, &err);
	if (!err) {
		bpreq = saveclk;
		bpreq |= FUNC3(bus->ci) ?
			SBSDIO_HT_AVAIL_REQ : SBSDIO_FORCE_HT;
		FUNC16(sdiod, SBSDIO_FUNC1_CHIPCLKCSR,
				   bpreq, &err);
	}
	if (err) {
		FUNC6("Failed to force clock for F2: err %d\n", err);
		goto release;
	}

	/* Enable function 2 (frame transfers) */
	FUNC17(sdiod, core->base + FUNC0(tosbmailboxdata),
			   SDPCM_PROT_VERSION << SMB_DATA_VERSION_SHIFT, NULL);

	err = FUNC24(sdiod->func2);

	FUNC5(INFO, "enable F2: err=%d\n", err);

	/* If F2 successfully enabled, set core and enable interrupts */
	if (!err) {
		/* Set up the interrupt mask and enable interrupts */
		bus->hostintmask = HOSTINTMASK;
		FUNC17(sdiod, core->base + FUNC0(hostintmask),
				   bus->hostintmask, NULL);

		switch (sdiod->func1->device) {
		case SDIO_DEVICE_ID_CYPRESS_4373:
			FUNC5(INFO, "set F2 watermark to 0x%x*4 bytes\n",
				  CY_4373_F2_WATERMARK);
			FUNC16(sdiod, SBSDIO_WATERMARK,
					   CY_4373_F2_WATERMARK, &err);
			devctl = FUNC15(sdiod, SBSDIO_DEVICE_CTL,
						   &err);
			devctl |= SBSDIO_DEVCTL_F2WM_ENAB;
			FUNC16(sdiod, SBSDIO_DEVICE_CTL, devctl,
					   &err);
			FUNC16(sdiod, SBSDIO_FUNC1_MESBUSYCTRL,
					   CY_4373_F2_WATERMARK |
					   SBSDIO_MESBUSYCTRL_ENAB, &err);
			break;
		case SDIO_DEVICE_ID_CYPRESS_43012:
			FUNC5(INFO, "set F2 watermark to 0x%x*4 bytes\n",
				  CY_43012_F2_WATERMARK);
			FUNC16(sdiod, SBSDIO_WATERMARK,
					   CY_43012_F2_WATERMARK, &err);
			devctl = FUNC15(sdiod, SBSDIO_DEVICE_CTL,
						   &err);
			devctl |= SBSDIO_DEVCTL_F2WM_ENAB;
			FUNC16(sdiod, SBSDIO_DEVICE_CTL, devctl,
					   &err);
			break;
		default:
			FUNC16(sdiod, SBSDIO_WATERMARK,
					   DEFAULT_F2_WATERMARK, &err);
			break;
		}
	} else {
		/* Disable F2 again */
		FUNC23(sdiod->func2);
		goto checkdied;
	}

	if (FUNC4(bus->ci)) {
		FUNC11(bus);
	} else {
		/* Restore previous clock setting */
		FUNC16(sdiod, SBSDIO_FUNC1_CHIPCLKCSR,
				   saveclk, &err);
	}

	if (err == 0) {
		/* Allow full data communication using DPC from now on. */
		FUNC13(bus->sdiodev, BRCMF_SDIOD_DATA);

		err = FUNC14(sdiod);
		if (err != 0)
			FUNC6("intr register failed:%d\n", err);
	}

	/* If we didn't come up, turn off backplane clock */
	if (err != 0) {
		FUNC9(bus, CLK_NONE, false);
		goto checkdied;
	}

	FUNC25(sdiod->func1);

	/* Assign bus interface call back */
	sdiod->bus_if->dev = sdiod->dev;
	sdiod->bus_if->ops = &brcmf_sdio_bus_ops;
	sdiod->bus_if->chip = bus->ci->chip;
	sdiod->bus_if->chiprev = bus->ci->chiprev;

	err = FUNC1(sdiod->dev, sdiod->settings);
	if (err) {
		FUNC6("brcmf_alloc failed\n");
		goto claim;
	}

	/* Attach to the common layer, reserve hdr space */
	err = FUNC2(sdiod->dev);
	if (err != 0) {
		FUNC6("brcmf_attach failed\n");
		goto free;
	}

	/* ready */
	return;

free:
	FUNC7(sdiod->dev);
claim:
	FUNC22(sdiod->func1);
checkdied:
	FUNC8(bus);
release:
	FUNC25(sdiod->func1);
fail:
	FUNC5(TRACE, "failed: dev=%s, err=%d\n", FUNC19(dev), err);
	FUNC20(&sdiod->func2->dev);
	FUNC20(dev);
}
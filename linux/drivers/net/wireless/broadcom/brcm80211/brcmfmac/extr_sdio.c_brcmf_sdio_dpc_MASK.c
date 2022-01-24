#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u32 ;
struct brcmf_sdio_dev {scalar_t__ state; int /*<<< orphan*/  func1; } ;
struct TYPE_4__ {int f1regdata; } ;
struct brcmf_sdio {scalar_t__ clkstate; unsigned long hostintmask; int ctrl_frame_stat; int ctrl_frame_err; int dpc_triggered; int /*<<< orphan*/  flowcontrol; int /*<<< orphan*/  txq; int /*<<< orphan*/  fcstate; int /*<<< orphan*/  ipend; int /*<<< orphan*/  intstatus; struct brcmf_sdio_dev* sdiodev; int /*<<< orphan*/  txminmax; scalar_t__ rxpending; int /*<<< orphan*/  ctrl_frame_len; int /*<<< orphan*/  ctrl_frame_buf; int /*<<< orphan*/  rxbound; scalar_t__ rxskip; TYPE_2__ sdcnt; int /*<<< orphan*/  sr_enabled; scalar_t__ txbound; TYPE_1__* sdio_core; } ;
struct TYPE_3__ {unsigned long base; } ;

/* Variables and functions */
 scalar_t__ BRCMF_SDIOD_DATA ; 
 scalar_t__ CLK_AVAIL ; 
 scalar_t__ CLK_PENDING ; 
 int ENODEV ; 
 unsigned long I_CHIPACTIVE ; 
 unsigned long I_HMB_FC_CHANGE ; 
 unsigned long I_HMB_FC_STATE ; 
 unsigned long I_HMB_FRAME_IND ; 
 unsigned long I_HMB_HOST_INT ; 
 unsigned long I_RD_OOSYNC ; 
 unsigned long I_SBINT ; 
 unsigned long I_WR_OOSYNC ; 
 int /*<<< orphan*/  SBSDIO_DEVCTL_CA_INT_ONLY ; 
 int /*<<< orphan*/  SBSDIO_DEVICE_CTL ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_CHIPCLKCSR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDIO ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_sdio*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_sdio*) ; 
 unsigned long FUNC10 (struct brcmf_sdio*) ; 
 int FUNC11 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_sdio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcmf_sdio*,scalar_t__) ; 
 int FUNC14 (struct brcmf_sdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct brcmf_sdio*) ; 
 int /*<<< orphan*/  FUNC16 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int*) ; 
 unsigned long FUNC17 (struct brcmf_sdio_dev*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct brcmf_sdio_dev*,unsigned long,unsigned long,int*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct brcmf_sdio*) ; 
 unsigned long intstatus ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 

__attribute__((used)) static void FUNC26(struct brcmf_sdio *bus)
{
	struct brcmf_sdio_dev *sdiod = bus->sdiodev;
	u32 newstatus = 0;
	u32 intstat_addr = bus->sdio_core->base + FUNC1(intstatus);
	unsigned long intstatus;
	uint txlimit = bus->txbound;	/* Tx frames to send before resched */
	uint framecnt;			/* Temporary counter of tx/rx frames */
	int err = 0;

	FUNC6(SDIO, "Enter\n");

	FUNC23(bus->sdiodev->func1);

	/* If waiting for HTAVAIL, check status */
	if (!bus->sr_enabled && bus->clkstate == CLK_PENDING) {
		u8 clkctl, devctl = 0;

#ifdef DEBUG
		/* Check for inconsistent device control */
		devctl = brcmf_sdiod_readb(bus->sdiodev, SBSDIO_DEVICE_CTL,
					   &err);
#endif				/* DEBUG */

		/* Read CSR, if clock on switch to AVAIL, else ignore */
		clkctl = FUNC16(bus->sdiodev,
					   SBSDIO_FUNC1_CHIPCLKCSR, &err);

		FUNC6(SDIO, "DPC: PENDING, devctl 0x%02x clkctl 0x%02x\n",
			  devctl, clkctl);

		if (FUNC0(clkctl)) {
			devctl = FUNC16(bus->sdiodev,
						   SBSDIO_DEVICE_CTL, &err);
			devctl &= ~SBSDIO_DEVCTL_CA_INT_ONLY;
			FUNC18(bus->sdiodev,
					   SBSDIO_DEVICE_CTL, devctl, &err);
			bus->clkstate = CLK_AVAIL;
		}
	}

	/* Make sure backplane clock is on */
	FUNC8(bus, false, true);

	/* Pending interrupt indicates new device status */
	if (FUNC3(&bus->ipend) > 0) {
		FUNC4(&bus->ipend, 0);
		err = FUNC11(bus);
	}

	/* Start with leftover status bits */
	intstatus = FUNC5(&bus->intstatus, 0);

	/* Handle flow-control change: read new state in case our ack
	 * crossed another change interrupt.  If change still set, assume
	 * FC ON for safety, let next loop through do the debounce.
	 */
	if (intstatus & I_HMB_FC_CHANGE) {
		intstatus &= ~I_HMB_FC_CHANGE;
		FUNC19(sdiod, intstat_addr, I_HMB_FC_CHANGE, &err);

		newstatus = FUNC17(sdiod, intstat_addr, &err);

		bus->sdcnt.f1regdata += 2;
		FUNC4(&bus->fcstate,
			   !!(newstatus & (I_HMB_FC_STATE | I_HMB_FC_CHANGE)));
		intstatus |= (newstatus & bus->hostintmask);
	}

	/* Handle host mailbox indication */
	if (intstatus & I_HMB_HOST_INT) {
		intstatus &= ~I_HMB_HOST_INT;
		intstatus |= FUNC10(bus);
	}

	FUNC24(bus->sdiodev->func1);

	/* Generally don't ask for these, can get CRC errors... */
	if (intstatus & I_WR_OOSYNC) {
		FUNC7("Dongle reports WR_OOSYNC\n");
		intstatus &= ~I_WR_OOSYNC;
	}

	if (intstatus & I_RD_OOSYNC) {
		FUNC7("Dongle reports RD_OOSYNC\n");
		intstatus &= ~I_RD_OOSYNC;
	}

	if (intstatus & I_SBINT) {
		FUNC7("Dongle reports SBINT\n");
		intstatus &= ~I_SBINT;
	}

	/* Would be active due to wake-wlan in gSPI */
	if (intstatus & I_CHIPACTIVE) {
		FUNC6(SDIO, "Dongle reports CHIPACTIVE\n");
		intstatus &= ~I_CHIPACTIVE;
	}

	/* Ignore frame indications if rxskip is set */
	if (bus->rxskip)
		intstatus &= ~I_HMB_FRAME_IND;

	/* On frame indication, read available frames */
	if ((intstatus & I_HMB_FRAME_IND) && (bus->clkstate == CLK_AVAIL)) {
		FUNC12(bus, bus->rxbound);
		if (!bus->rxpending)
			intstatus &= ~I_HMB_FRAME_IND;
	}

	/* Keep still-pending events for next scheduling */
	if (intstatus)
		FUNC2(intstatus, &bus->intstatus);

	FUNC9(bus);

	if (bus->ctrl_frame_stat && (bus->clkstate == CLK_AVAIL) &&
	    FUNC21(bus)) {
		FUNC23(bus->sdiodev->func1);
		if (bus->ctrl_frame_stat) {
			err = FUNC14(bus,  bus->ctrl_frame_buf,
						      bus->ctrl_frame_len);
			bus->ctrl_frame_err = err;
			FUNC25();
			bus->ctrl_frame_stat = false;
		}
		FUNC24(bus->sdiodev->func1);
		FUNC15(bus);
	}
	/* Send queued frames (limit 1 if rx may still be pending) */
	if ((bus->clkstate == CLK_AVAIL) && !FUNC3(&bus->fcstate) &&
	    FUNC20(&bus->txq, ~bus->flowcontrol) && txlimit &&
	    FUNC21(bus)) {
		framecnt = bus->rxpending ? FUNC22(txlimit, bus->txminmax) :
					    txlimit;
		FUNC13(bus, framecnt);
	}

	if ((bus->sdiodev->state != BRCMF_SDIOD_DATA) || (err != 0)) {
		FUNC7("failed backplane access over SDIO, halting operation\n");
		FUNC4(&bus->intstatus, 0);
		if (bus->ctrl_frame_stat) {
			FUNC23(bus->sdiodev->func1);
			if (bus->ctrl_frame_stat) {
				bus->ctrl_frame_err = -ENODEV;
				FUNC25();
				bus->ctrl_frame_stat = false;
				FUNC15(bus);
			}
			FUNC24(bus->sdiodev->func1);
		}
	} else if (FUNC3(&bus->intstatus) ||
		   FUNC3(&bus->ipend) > 0 ||
		   (!FUNC3(&bus->fcstate) &&
		    FUNC20(&bus->txq, ~bus->flowcontrol) &&
		    FUNC21(bus))) {
		bus->dpc_triggered = true;
	}
}
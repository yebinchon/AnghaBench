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
typedef  int uint ;
typedef  int u8 ;
typedef  int u16 ;
struct brcmf_sdio_dev {int /*<<< orphan*/  func2; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ f1regdata; int /*<<< orphan*/  rxrtx; } ;
struct brcmf_sdio {int rxskip; TYPE_2__ cur_read; TYPE_1__ sdcnt; struct brcmf_sdio_dev* sdiodev; struct brcmf_core* sdio_core; } ;
struct brcmf_core {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBSDIO_FUNC1_FRAMECTRL ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_RFRAMEBCHI ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_RFRAMEBCLO ; 
 int /*<<< orphan*/  SDIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SFC_RF_TERM ; 
 int /*<<< orphan*/  SMB_NAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_sdio_dev*,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  tosbmailbox ; 

__attribute__((used)) static void FUNC7(struct brcmf_sdio *bus, bool abort, bool rtx)
{
	struct brcmf_sdio_dev *sdiod = bus->sdiodev;
	struct brcmf_core *core = bus->sdio_core;
	uint retries = 0;
	u16 lastrbc;
	u8 hi, lo;
	int err;

	FUNC2("%sterminate frame%s\n",
		  abort ? "abort command, " : "",
		  rtx ? ", send NAK" : "");

	if (abort)
		FUNC3(bus->sdiodev, bus->sdiodev->func2);

	FUNC5(bus->sdiodev, SBSDIO_FUNC1_FRAMECTRL, SFC_RF_TERM,
			   &err);
	bus->sdcnt.f1regdata++;

	/* Wait until the packet has been flushed (device/FIFO stable) */
	for (lastrbc = retries = 0xffff; retries > 0; retries--) {
		hi = FUNC4(bus->sdiodev, SBSDIO_FUNC1_RFRAMEBCHI,
				       &err);
		lo = FUNC4(bus->sdiodev, SBSDIO_FUNC1_RFRAMEBCLO,
				       &err);
		bus->sdcnt.f1regdata += 2;

		if ((hi == 0) && (lo == 0))
			break;

		if ((hi > (lastrbc >> 8)) && (lo > (lastrbc & 0x00ff))) {
			FUNC2("count growing: last 0x%04x now 0x%04x\n",
				  lastrbc, (hi << 8) + lo);
		}
		lastrbc = (hi << 8) + lo;
	}

	if (!retries)
		FUNC2("count never zeroed: last 0x%04x\n", lastrbc);
	else
		FUNC1(SDIO, "flush took %d iterations\n", 0xffff - retries);

	if (rtx) {
		bus->sdcnt.rxrtx++;
		FUNC6(sdiod, core->base + FUNC0(tosbmailbox),
				   SMB_NAK, &err);

		bus->sdcnt.f1regdata++;
		if (err == 0)
			bus->rxskip = true;
	}

	/* Clear partial in any case */
	bus->cur_read.len = 0;
}
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
struct device {int dummy; } ;
struct brcmf_sdio_dev {scalar_t__ state; struct brcmf_sdio* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_ctlerrs; int /*<<< orphan*/  rx_ctlpkts; } ;
struct brcmf_sdio {TYPE_2__ sdcnt; int /*<<< orphan*/  rxctl_lock; scalar_t__ rxlen; int /*<<< orphan*/ * rxctl_orig; int /*<<< orphan*/ * rxctl; } ;
struct TYPE_3__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;

/* Variables and functions */
 scalar_t__ BRCMF_SDIOD_DATA ; 
 int /*<<< orphan*/  CTL ; 
 int EIO ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_sdio*) ; 
 int FUNC3 (struct brcmf_sdio*,scalar_t__*,int*) ; 
 struct brcmf_bus* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct device *dev, unsigned char *msg, uint msglen)
{
	int timeleft;
	uint rxlen = 0;
	bool pending;
	u8 *buf;
	struct brcmf_bus *bus_if = FUNC4(dev);
	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
	struct brcmf_sdio *bus = sdiodev->bus;

	FUNC0(TRACE, "Enter\n");
	if (sdiodev->state != BRCMF_SDIOD_DATA)
		return -EIO;

	/* Wait until control frame is available */
	timeleft = FUNC3(bus, &bus->rxlen, &pending);

	FUNC7(&bus->rxctl_lock);
	rxlen = bus->rxlen;
	FUNC5(msg, bus->rxctl, FUNC6(msglen, rxlen));
	bus->rxctl = NULL;
	buf = bus->rxctl_orig;
	bus->rxctl_orig = NULL;
	bus->rxlen = 0;
	FUNC8(&bus->rxctl_lock);
	FUNC9(buf);

	if (rxlen) {
		FUNC0(CTL, "resumed on rxctl frame, got %d expected %d\n",
			  rxlen, msglen);
	} else if (timeleft == 0) {
		FUNC1("resumed on timeout\n");
		FUNC2(bus);
	} else if (pending) {
		FUNC0(CTL, "cancelled\n");
		return -ERESTARTSYS;
	} else {
		FUNC0(CTL, "resumed for unknown reason?\n");
		FUNC2(bus);
	}

	if (rxlen)
		bus->sdcnt.rx_ctlpkts++;
	else
		bus->sdcnt.rx_ctlerrs++;

	return rxlen ? (int)rxlen : -ETIMEDOUT;
}
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
typedef  size_t uint ;
typedef  scalar_t__ u16 ;
struct sk_buff {int priority; scalar_t__ cb; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
struct brcmf_sdio_dev {scalar_t__ state; struct brcmf_sdio* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  fcqueued; } ;
struct brcmf_sdio {int txoff; int /*<<< orphan*/  txq; int /*<<< orphan*/  txq_lock; int /*<<< orphan*/  tx_hdrlen; TYPE_2__ sdcnt; } ;
struct TYPE_3__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;

/* Variables and functions */
 scalar_t__ BRCMF_SDIOD_DATA ; 
 int EBADE ; 
 int EIO ; 
 int ENOSR ; 
 int PRIOMASK ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ TXHI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio*) ; 
 struct brcmf_bus* FUNC5 (struct device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC8 (int) ; 
 scalar_t__* qcount ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct device *dev, struct sk_buff *pkt)
{
	int ret = -EBADE;
	uint prec;
	struct brcmf_bus *bus_if = FUNC5(dev);
	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
	struct brcmf_sdio *bus = sdiodev->bus;

	FUNC0(TRACE, "Enter: pkt: data %p len %d\n", pkt->data, pkt->len);
	if (sdiodev->state != BRCMF_SDIOD_DATA)
		return -EIO;

	/* Add space for the header */
	FUNC10(pkt, bus->tx_hdrlen);
	/* precondition: IS_ALIGNED((unsigned long)(pkt->data), 2) */

	prec = FUNC8((pkt->priority & PRIOMASK));

	/* Check for existing queue, current flow-control,
			 pending event, or pending clock */
	FUNC0(TRACE, "deferring pktq len %d\n", FUNC6(&bus->txq));
	bus->sdcnt.fcqueued++;

	/* Priority based enq */
	FUNC11(&bus->txq_lock);
	/* reset bus_flags in packet cb */
	*(u16 *)(pkt->cb) = 0;
	if (!FUNC3(&bus->txq, pkt, prec)) {
		FUNC9(pkt, bus->tx_hdrlen);
		FUNC1("out of bus->txq !!!\n");
		ret = -ENOSR;
	} else {
		ret = 0;
	}

	if (FUNC6(&bus->txq) >= TXHI) {
		bus->txoff = true;
		FUNC2(dev, true);
	}
	FUNC12(&bus->txq_lock);

#ifdef DEBUG
	if (pktq_plen(&bus->txq, prec) > qcount[prec])
		qcount[prec] = pktq_plen(&bus->txq, prec);
#endif

	FUNC4(bus);
	return ret;
}
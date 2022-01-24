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
typedef  int u16 ;
struct timer_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {unsigned int base_addr; scalar_t__ if_port; TYPE_2__ stats; int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {void* expires; } ;
struct el3_private {int fast_poll; int media_status; TYPE_3__ media; int /*<<< orphan*/  lock; scalar_t__ last_irq; TYPE_1__* p_dev; } ;
struct TYPE_4__ {struct net_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 scalar_t__ EL3_TIMER ; 
 int HZ ; 
 int IntLatch ; 
 int /*<<< orphan*/  StatsDisable ; 
 int /*<<< orphan*/  StatsEnable ; 
 scalar_t__ WN4_MEDIA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct el3_private* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 struct el3_private* lp ; 
 int media ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int) ; 
 scalar_t__ FUNC15 (void*,scalar_t__) ; 

__attribute__((used)) static void FUNC16(struct timer_list *t)
{
	struct el3_private *lp = FUNC3(lp, t, media);
	struct net_device *dev = lp->p_dev->priv;
	unsigned int ioaddr = dev->base_addr;
	u16 media, errs;
	unsigned long flags;

	if (!FUNC10(dev))
		goto reschedule;

	/* Check for pending interrupt with expired latency timer: with
	 * this, we can limp along even if the interrupt is blocked
	 */
	if ((FUNC5(ioaddr + EL3_STATUS) & IntLatch) &&
	(FUNC4(ioaddr + EL3_TIMER) == 0xff)) {
		if (!lp->fast_poll)
			FUNC9(dev, "interrupt(s) dropped!\n");

		FUNC7(flags);
		FUNC2(dev->irq, dev);
		FUNC6(flags);

		lp->fast_poll = HZ;
	}
	if (lp->fast_poll) {
		lp->fast_poll--;
		lp->media.expires = jiffies + HZ/100;
		FUNC1(&lp->media);
		return;
	}

	/* lp->lock guards the EL3 window. Window should always be 1 except
	 * when the lock is held
	 */

	FUNC12(&lp->lock, flags);
	FUNC0(4);
	media = FUNC5(ioaddr+WN4_MEDIA) & 0xc810;

	/* Ignore collisions unless we've had no irq's recently */
	if (FUNC15(jiffies, lp->last_irq + HZ)) {
		media &= ~0x0010;
	} else {
		/* Try harder to detect carrier errors */
		FUNC0(6);
		FUNC11(StatsDisable, ioaddr + EL3_CMD);
		errs = FUNC4(ioaddr + 0);
		FUNC11(StatsEnable, ioaddr + EL3_CMD);
		dev->stats.tx_carrier_errors += errs;
		if (errs || (lp->media_status & 0x0010))
			media |= 0x0010;
	}

	if (media != lp->media_status) {
		if ((media & lp->media_status & 0x8000) &&
				((lp->media_status ^ media) & 0x0800))
		FUNC8(dev, "%s link beat\n",
				(lp->media_status & 0x0800 ? "lost" : "found"));
		else if ((media & lp->media_status & 0x4000) &&
		 ((lp->media_status ^ media) & 0x0010))
		FUNC8(dev, "coax cable %s\n",
				(lp->media_status & 0x0010 ? "ok" : "problem"));
		if (dev->if_port == 0) {
			if (media & 0x8000) {
				if (media & 0x0800)
					FUNC8(dev, "flipped to 10baseT\n");
				else
			FUNC14(dev, 2);
			} else if (media & 0x4000) {
				if (media & 0x0010)
					FUNC14(dev, 1);
				else
					FUNC8(dev, "flipped to 10base2\n");
			}
		}
		lp->media_status = media;
	}

	FUNC0(1);
	FUNC13(&lp->lock, flags);

reschedule:
	lp->media.expires = jiffies + HZ;
	FUNC1(&lp->media);
}
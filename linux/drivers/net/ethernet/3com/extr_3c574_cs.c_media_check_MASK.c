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
struct timer_list {int dummy; } ;
struct net_device {unsigned int base_addr; int mtu; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {void* expires; } ;
struct el3_private {int fast_poll; unsigned short media_status; unsigned short partner; unsigned short advertising; TYPE_2__ media; int /*<<< orphan*/  window_lock; int /*<<< orphan*/  phys; TYPE_1__* p_dev; } ;
struct TYPE_3__ {struct net_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EL3_STATUS ; 
 int HZ ; 
 int IntLatch ; 
 scalar_t__ Timer ; 
 scalar_t__ Wn3_MAC_Ctrl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct el3_private* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 struct el3_private* lp ; 
 unsigned short FUNC8 (unsigned int,int /*<<< orphan*/ ,int) ; 
 unsigned short media ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct timer_list *t)
{
	struct el3_private *lp = FUNC3(lp, t, media);
	struct net_device *dev = lp->p_dev->priv;
	unsigned int ioaddr = dev->base_addr;
	unsigned long flags;
	unsigned short /* cable, */ media, partner;

	if (!FUNC10(dev))
		goto reschedule;
	
	/* Check for pending interrupt with expired latency timer: with
	   this, we can limp along even if the interrupt is blocked */
	if ((FUNC5(ioaddr + EL3_STATUS) & IntLatch) && (FUNC4(ioaddr + Timer) == 0xff)) {
		if (!lp->fast_poll)
			FUNC9(dev, "interrupt(s) dropped!\n");

		FUNC7(flags);
		FUNC2(dev->irq, dev);
		FUNC6(flags);

		lp->fast_poll = HZ;
	}
	if (lp->fast_poll) {
		lp->fast_poll--;
		lp->media.expires = jiffies + 2*HZ/100;
		FUNC1(&lp->media);
		return;
	}

	FUNC12(&lp->window_lock, flags);
	FUNC0(4);
	media = FUNC8(ioaddr, lp->phys, 1);
	partner = FUNC8(ioaddr, lp->phys, 5);
	FUNC0(1);
	
	if (media != lp->media_status) {
		if ((media ^ lp->media_status) & 0x0004)
			FUNC9(dev, "%s link beat\n",
				    (lp->media_status & 0x0004) ? "lost" : "found");
		if ((media ^ lp->media_status) & 0x0020) {
			lp->partner = 0;
			if (lp->media_status & 0x0020) {
				FUNC9(dev, "autonegotiation restarted\n");
			} else if (partner) {
				partner &= lp->advertising;
				lp->partner = partner;
				FUNC9(dev, "autonegotiation complete: "
					    "%dbaseT-%cD selected\n",
					    (partner & 0x0180) ? 100 : 10,
					    (partner & 0x0140) ? 'F' : 'H');
			} else {
				FUNC9(dev, "link partner did not autonegotiate\n");
			}

			FUNC0(3);
			FUNC11((partner & 0x0140 ? 0x20 : 0) |
				 (dev->mtu > 1500 ? 0x40 : 0), ioaddr + Wn3_MAC_Ctrl);
			FUNC0(1);

		}
		if (media & 0x0010)
			FUNC9(dev, "remote fault detected\n");
		if (media & 0x0002)
			FUNC9(dev, "jabber detected\n");
		lp->media_status = media;
	}
	FUNC13(&lp->window_lock, flags);

reschedule:
	lp->media.expires = jiffies + HZ;
	FUNC1(&lp->media);
}
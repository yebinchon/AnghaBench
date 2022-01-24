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
typedef  int u_short ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {void* expires; } ;
struct pcnet_dev {int fast_poll; int flags; int phy_id; int eth_phy; int link_status; int pna_phy; TYPE_2__ watchdog; void* mii_reset; int /*<<< orphan*/  stale; TYPE_1__* p_dev; } ;
struct net_device {unsigned int base_addr; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {struct net_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL19FDUPLX ; 
 scalar_t__ DLINK_DIAG ; 
 unsigned int DLINK_GPIO ; 
 scalar_t__ EN0_ISR ; 
 int ENISR_ALL ; 
 int HAS_MII ; 
 int HZ ; 
 int IS_DL10019 ; 
 int IS_DL10022 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct pcnet_dev* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 struct pcnet_dev* info ; 
 void* jiffies ; 
 int FUNC5 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 scalar_t__ FUNC10 (void*,void*) ; 
 int /*<<< orphan*/  watchdog ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct timer_list *t)
{
    struct pcnet_dev *info = FUNC3(info, t, watchdog);
    struct net_device *dev = info->p_dev->priv;
    unsigned int nic_base = dev->base_addr;
    unsigned int mii_addr = nic_base + DLINK_GPIO;
    u_short link;

    if (!FUNC8(dev)) goto reschedule;

    /* Check for pending interrupt with expired latency timer: with
       this, we can limp along even if the interrupt is blocked */
    if (info->stale++ && (FUNC4(nic_base + EN0_ISR) & ENISR_ALL)) {
	if (!info->fast_poll)
	    FUNC7(dev, "interrupt(s) dropped!\n");
	FUNC2(dev->irq, dev);
	info->fast_poll = HZ;
    }
    if (info->fast_poll) {
	info->fast_poll--;
	info->watchdog.expires = jiffies + 1;
	FUNC1(&info->watchdog);
	return;
    }

    if (!(info->flags & HAS_MII))
	goto reschedule;

    FUNC5(mii_addr, info->phy_id, 1);
    link = FUNC5(mii_addr, info->phy_id, 1);
    if (!link || (link == 0xffff)) {
	if (info->eth_phy) {
	    info->phy_id = info->eth_phy = 0;
	} else {
	    FUNC7(dev, "MII is missing!\n");
	    info->flags &= ~HAS_MII;
	}
	goto reschedule;
    }

    link &= 0x0004;
    if (link != info->link_status) {
	u_short p = FUNC5(mii_addr, info->phy_id, 5);
	FUNC7(dev, "%s link beat\n", link ? "found" : "lost");
	if (link && (info->flags & IS_DL10022)) {
	    /* Disable collision detection on full duplex links */
	    FUNC9((p & 0x0140) ? 4 : 0, nic_base + DLINK_DIAG);
	} else if (link && (info->flags & IS_DL10019)) {
	    /* Disable collision detection on full duplex links */
	    FUNC11(dev->base_addr, 4, (p & 0x140) ? DL19FDUPLX : 0);
	}
	if (link) {
	    if (info->phy_id == info->eth_phy) {
		if (p)
		    FUNC7(dev, "autonegotiation complete: "
				"%sbaseT-%cD selected\n",
				((p & 0x0180) ? "100" : "10"),
				((p & 0x0140) ? 'F' : 'H'));
		else
		    FUNC7(dev, "link partner did not autonegotiate\n");
	    }
	    FUNC0(dev, 1);
	}
	info->link_status = link;
    }
    if (info->pna_phy && FUNC10(jiffies, info->mii_reset + 6*HZ)) {
	link = FUNC5(mii_addr, info->eth_phy, 1) & 0x0004;
	if (((info->phy_id == info->pna_phy) && link) ||
	    ((info->phy_id != info->pna_phy) && !link)) {
	    /* isolate this MII and try flipping to the other one */
	    FUNC6(mii_addr, info->phy_id, 0, 0x0400);
	    info->phy_id ^= info->pna_phy ^ info->eth_phy;
	    FUNC7(dev, "switched to %s transceiver\n",
			(info->phy_id == info->eth_phy) ? "ethernet" : "PNA");
	    FUNC6(mii_addr, info->phy_id, 0,
		       (info->phy_id == info->eth_phy) ? 0x1000 : 0);
	    info->link_status = 0;
	    info->mii_reset = jiffies;
	}
    }

reschedule:
    info->watchdog.expires = jiffies + HZ;
    FUNC1(&info->watchdog);
}
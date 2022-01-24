#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_interface {int dummy; } ;
struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct lan78xx_net {int delta; scalar_t__ tx_qlen; int /*<<< orphan*/  bh; int /*<<< orphan*/  net; TYPE_1__ txq; int /*<<< orphan*/  flags; int /*<<< orphan*/  intf; int /*<<< orphan*/  deferred; struct urb* urb_intr; int /*<<< orphan*/  suspend_count; int /*<<< orphan*/  stat_monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEV_ASLEEP ; 
 int /*<<< orphan*/  EVENT_DEV_OPEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  MAC_TX ; 
 int MAC_TX_TXEN_ ; 
 scalar_t__ STAT_UPDATE_TIMER ; 
 int /*<<< orphan*/  WK_SRC ; 
 int /*<<< orphan*/  WUCSR ; 
 int /*<<< orphan*/  WUCSR2 ; 
 int WUCSR2_ARP_RCD_ ; 
 int WUCSR2_IPV4_TCPSYN_RCD_ ; 
 int WUCSR2_IPV6_TCPSYN_RCD_ ; 
 int WUCSR2_NS_RCD_ ; 
 int WUCSR_BCST_FR_ ; 
 int WUCSR_EEE_RX_WAKE_ ; 
 int WUCSR_EEE_TX_WAKE_ ; 
 int WUCSR_MPR_ ; 
 int WUCSR_PFDA_FR_ ; 
 int WUCSR_RFE_WAKE_FR_ ; 
 int WUCSR_WUFR_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_start ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct urb*) ; 
 struct urb* FUNC16 (int /*<<< orphan*/ *) ; 
 struct lan78xx_net* FUNC17 (struct usb_interface*) ; 
 int FUNC18 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *intf)
{
	struct lan78xx_net *dev = FUNC17(intf);
	struct sk_buff *skb;
	struct urb *res;
	int ret;
	u32 buf;

	if (!FUNC13(&dev->stat_monitor)) {
		dev->delta = 1;
		FUNC5(&dev->stat_monitor,
			  jiffies + STAT_UPDATE_TIMER);
	}

	if (!--dev->suspend_count) {
		/* resume interrupt URBs */
		if (dev->urb_intr && FUNC12(EVENT_DEV_OPEN, &dev->flags))
				FUNC18(dev->urb_intr, GFP_NOIO);

		FUNC9(&dev->txq.lock);
		while ((res = FUNC16(&dev->deferred))) {
			skb = (struct sk_buff *)res->context;
			ret = FUNC18(res, GFP_ATOMIC);
			if (ret < 0) {
				FUNC1(skb);
				FUNC15(res);
				FUNC14(dev->intf);
			} else {
				FUNC7(dev->net);
				FUNC2(&dev->txq, skb, tx_start);
			}
		}

		FUNC0(EVENT_DEV_ASLEEP, &dev->flags);
		FUNC10(&dev->txq.lock);

		if (FUNC12(EVENT_DEV_OPEN, &dev->flags)) {
			if (!(FUNC8(&dev->txq) >= dev->tx_qlen))
				FUNC6(dev->net);
			FUNC11(&dev->bh);
		}
	}

	ret = FUNC4(dev, WUCSR2, 0);
	ret = FUNC4(dev, WUCSR, 0);
	ret = FUNC4(dev, WK_SRC, 0xFFF1FF1FUL);

	ret = FUNC4(dev, WUCSR2, WUCSR2_NS_RCD_ |
					     WUCSR2_ARP_RCD_ |
					     WUCSR2_IPV6_TCPSYN_RCD_ |
					     WUCSR2_IPV4_TCPSYN_RCD_);

	ret = FUNC4(dev, WUCSR, WUCSR_EEE_TX_WAKE_ |
					    WUCSR_EEE_RX_WAKE_ |
					    WUCSR_PFDA_FR_ |
					    WUCSR_RFE_WAKE_FR_ |
					    WUCSR_WUFR_ |
					    WUCSR_MPR_ |
					    WUCSR_BCST_FR_);

	ret = FUNC3(dev, MAC_TX, &buf);
	buf |= MAC_TX_TXEN_;
	ret = FUNC4(dev, MAC_TX, buf);

	return 0;
}
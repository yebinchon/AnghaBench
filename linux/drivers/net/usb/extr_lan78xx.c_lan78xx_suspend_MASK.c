#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_interface {int dummy; } ;
struct lan78xx_priv {int /*<<< orphan*/  wol; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct lan78xx_net {int /*<<< orphan*/  stat_monitor; int /*<<< orphan*/  flags; int /*<<< orphan*/  net; int /*<<< orphan*/  urb_intr; TYPE_2__ txq; TYPE_2__ txq_pend; int /*<<< orphan*/  suspend_count; scalar_t__* data; } ;
struct TYPE_5__ {int event; } ;
typedef  TYPE_1__ pm_message_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EVENT_DEV_ASLEEP ; 
 int /*<<< orphan*/  MAC_RX ; 
 int MAC_RX_RXEN_ ; 
 int /*<<< orphan*/  MAC_TX ; 
 int MAC_TX_TXEN_ ; 
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  PMT_CTL ; 
 int PMT_CTL_PHY_WAKE_EN_ ; 
 int PMT_CTL_RES_CLR_WKP_EN_ ; 
 int PMT_CTL_RES_CLR_WKP_STS_ ; 
 int PMT_CTL_SUS_MODE_3_ ; 
 int PMT_CTL_SUS_MODE_MASK_ ; 
 int PMT_CTL_WOL_EN_ ; 
 int PMT_CTL_WUPS_MASK_ ; 
 int /*<<< orphan*/  WK_SRC ; 
 int /*<<< orphan*/  WUCSR ; 
 int /*<<< orphan*/  WUCSR2 ; 
 int WUCSR_RFE_WAKE_EN_ ; 
 int WUCSR_STORE_WAKE_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct lan78xx_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lan78xx_net*) ; 
 int FUNC5 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lan78xx_net* FUNC13 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *intf, pm_message_t message)
{
	struct lan78xx_net *dev = FUNC13(intf);
	struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);
	u32 buf;
	int ret;
	int event;

	event = message.event;

	if (!dev->suspend_count++) {
		FUNC10(&dev->txq.lock);
		/* don't autosuspend while transmitting */
		if ((FUNC9(&dev->txq) ||
		     FUNC9(&dev->txq_pend)) &&
			FUNC0(message)) {
			FUNC11(&dev->txq.lock);
			ret = -EBUSY;
			goto out;
		} else {
			FUNC8(EVENT_DEV_ASLEEP, &dev->flags);
			FUNC11(&dev->txq.lock);
		}

		/* stop TX & RX */
		ret = FUNC2(dev, MAC_TX, &buf);
		buf &= ~MAC_TX_TXEN_;
		ret = FUNC5(dev, MAC_TX, buf);
		ret = FUNC2(dev, MAC_RX, &buf);
		buf &= ~MAC_RX_RXEN_;
		ret = FUNC5(dev, MAC_RX, buf);

		/* empty out the rx and queues */
		FUNC7(dev->net);
		FUNC4(dev);
		FUNC14(dev->urb_intr);

		/* reattach */
		FUNC6(dev->net);
	}

	if (FUNC12(EVENT_DEV_ASLEEP, &dev->flags)) {
		FUNC1(&dev->stat_monitor);

		if (FUNC0(message)) {
			/* auto suspend (selective suspend) */
			ret = FUNC2(dev, MAC_TX, &buf);
			buf &= ~MAC_TX_TXEN_;
			ret = FUNC5(dev, MAC_TX, buf);
			ret = FUNC2(dev, MAC_RX, &buf);
			buf &= ~MAC_RX_RXEN_;
			ret = FUNC5(dev, MAC_RX, buf);

			ret = FUNC5(dev, WUCSR, 0);
			ret = FUNC5(dev, WUCSR2, 0);
			ret = FUNC5(dev, WK_SRC, 0xFFF1FF1FUL);

			/* set goodframe wakeup */
			ret = FUNC2(dev, WUCSR, &buf);

			buf |= WUCSR_RFE_WAKE_EN_;
			buf |= WUCSR_STORE_WAKE_;

			ret = FUNC5(dev, WUCSR, buf);

			ret = FUNC2(dev, PMT_CTL, &buf);

			buf &= ~PMT_CTL_RES_CLR_WKP_EN_;
			buf |= PMT_CTL_RES_CLR_WKP_STS_;

			buf |= PMT_CTL_PHY_WAKE_EN_;
			buf |= PMT_CTL_WOL_EN_;
			buf &= ~PMT_CTL_SUS_MODE_MASK_;
			buf |= PMT_CTL_SUS_MODE_3_;

			ret = FUNC5(dev, PMT_CTL, buf);

			ret = FUNC2(dev, PMT_CTL, &buf);

			buf |= PMT_CTL_WUPS_MASK_;

			ret = FUNC5(dev, PMT_CTL, buf);

			ret = FUNC2(dev, MAC_RX, &buf);
			buf |= MAC_RX_RXEN_;
			ret = FUNC5(dev, MAC_RX, buf);
		} else {
			FUNC3(dev, pdata->wol);
		}
	}

	ret = 0;
out:
	return ret;
}
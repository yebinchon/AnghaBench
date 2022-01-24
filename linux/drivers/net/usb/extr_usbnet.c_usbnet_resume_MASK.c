#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ qlen; int /*<<< orphan*/  lock; } ;
struct usbnet {int /*<<< orphan*/  flags; int /*<<< orphan*/  bh; int /*<<< orphan*/  net; TYPE_1__ txq; int /*<<< orphan*/  delay; int /*<<< orphan*/  intf; int /*<<< orphan*/  deferred; int /*<<< orphan*/  suspend_count; } ;
struct usb_interface {int dummy; } ;
struct urb {int /*<<< orphan*/  sg; scalar_t__ context; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEVICE_REPORT_IDLE ; 
 int /*<<< orphan*/  EVENT_DEV_ASLEEP ; 
 int /*<<< orphan*/  EVENT_DEV_OPEN ; 
 int /*<<< orphan*/  EVENT_RX_HALT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct urb*) ; 
 struct urb* FUNC20 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC21 (struct usb_interface*) ; 
 int FUNC22 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC23 (struct usb_interface *intf)
{
	struct usbnet		*dev = FUNC21(intf);
	struct sk_buff          *skb;
	struct urb              *res;
	int                     retval;

	if (!--dev->suspend_count) {
		/* resume interrupt URB if it was previously submitted */
		FUNC2(dev, GFP_NOIO);

		FUNC11(&dev->txq.lock);
		while ((res = FUNC20(&dev->deferred))) {

			skb = (struct sk_buff *)res->context;
			retval = FUNC22(res, GFP_ATOMIC);
			if (retval < 0) {
				FUNC4(skb);
				FUNC5(res->sg);
				FUNC19(res);
				FUNC18(dev->intf);
			} else {
				FUNC7(dev->net);
				FUNC1(&dev->txq, skb);
			}
		}

		FUNC10();
		FUNC3(EVENT_DEV_ASLEEP, &dev->flags);
		FUNC12(&dev->txq.lock);

		if (FUNC15(EVENT_DEV_OPEN, &dev->flags)) {
			/* handle remote wakeup ASAP
			 * we cannot race against stop
			 */
			if (FUNC6(dev->net) &&
				!FUNC16(&dev->delay) &&
				!FUNC15(EVENT_RX_HALT, &dev->flags))
					FUNC9(dev, GFP_NOIO);

			if (!(dev->txq.qlen >= FUNC0(dev)))
				FUNC8(dev->net);
			FUNC13 (&dev->bh);
		}
	}

	if (FUNC14(EVENT_DEVICE_REPORT_IDLE, &dev->flags))
		FUNC17(intf);

	return 0;
}
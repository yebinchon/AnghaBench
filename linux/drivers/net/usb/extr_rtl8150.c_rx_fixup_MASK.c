#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rtl8150 {int /*<<< orphan*/  tl; int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; int /*<<< orphan*/  rx_urb; struct sk_buff* rx_skb; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_pool_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTL8150_MTU ; 
 int /*<<< orphan*/  RX_URB_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8150*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct rtl8150*) ; 
 int /*<<< orphan*/  read_bulk_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtl8150*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	struct rtl8150 *dev = (struct rtl8150 *)data;
	struct sk_buff *skb;
	int status;

	FUNC5(&dev->rx_pool_lock);
	FUNC1(dev);
	FUNC6(&dev->rx_pool_lock);
	if (FUNC8(RX_URB_FAIL, &dev->flags))
		if (dev->rx_skb)
			goto try_again;
	FUNC5(&dev->rx_pool_lock);
	skb = FUNC3(dev);
	FUNC6(&dev->rx_pool_lock);
	if (skb == NULL)
		goto tlsched;
	dev->rx_skb = skb;
	FUNC9(dev->rx_urb, dev->udev, FUNC10(dev->udev, 1),
		      dev->rx_skb->data, RTL8150_MTU, read_bulk_callback, dev);
try_again:
	status = FUNC11(dev->rx_urb, GFP_ATOMIC);
	if (status == -ENODEV) {
		FUNC2(dev->netdev);
	} else if (status) {
		FUNC4(RX_URB_FAIL, &dev->flags);
		goto tlsched;
	} else {
		FUNC0(RX_URB_FAIL, &dev->flags);
	}

	return;
tlsched:
	FUNC7(&dev->tl);
}
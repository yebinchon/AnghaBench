#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  netdev; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  intr_interval; int /*<<< orphan*/  intr_buff; int /*<<< orphan*/  udev; TYPE_5__* rx_skb; } ;
typedef  TYPE_1__ rtl8150_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  INTBUFSIZE ; 
 int /*<<< orphan*/  RTL8150_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  intr_callback ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 TYPE_5__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  read_bulk_callback ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct net_device *netdev)
{
	rtl8150_t *dev = FUNC2(netdev);
	int res;

	if (dev->rx_skb == NULL)
		dev->rx_skb = FUNC5(dev);
	if (!dev->rx_skb)
		return -ENOMEM;

	FUNC7(dev, IDR, 6, netdev->dev_addr);

	FUNC8(dev->rx_urb, dev->udev, FUNC11(dev->udev, 1),
		      dev->rx_skb->data, RTL8150_MTU, read_bulk_callback, dev);
	if ((res = FUNC13(dev->rx_urb, GFP_KERNEL))) {
		if (res == -ENODEV)
			FUNC3(dev->netdev);
		FUNC0(&netdev->dev, "rx_urb submit failed: %d\n", res);
		return res;
	}
	FUNC9(dev->intr_urb, dev->udev, FUNC12(dev->udev, 3),
		     dev->intr_buff, INTBUFSIZE, intr_callback,
		     dev, dev->intr_interval);
	if ((res = FUNC13(dev->intr_urb, GFP_KERNEL))) {
		if (res == -ENODEV)
			FUNC3(dev->netdev);
		FUNC0(&netdev->dev, "intr_urb submit failed: %d\n", res);
		FUNC10(dev->rx_urb);
		return res;
	}
	FUNC1(dev);
	FUNC6(netdev);
	FUNC4(netdev);

	return res;
}
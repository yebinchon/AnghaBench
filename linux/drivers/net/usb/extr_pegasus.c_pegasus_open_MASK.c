#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  usb; int /*<<< orphan*/  net; int /*<<< orphan*/  intr_interval; int /*<<< orphan*/  intr_buff; TYPE_7__* rx_skb; } ;
typedef  TYPE_1__ pegasus_t ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EthID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PEGASUS_MTU ; 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  intr_callback ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  read_bulk_callback ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct net_device *net)
{
	pegasus_t *pegasus = FUNC2(net);
	int res=-ENOMEM;

	if (pegasus->rx_skb == NULL)
		pegasus->rx_skb = FUNC0(pegasus->net,
							      PEGASUS_MTU,
							      GFP_KERNEL);
	if (!pegasus->rx_skb)
		goto exit;

	res = FUNC7(pegasus, EthID, 6, net->dev_addr);

	FUNC8(pegasus->rx_urb, pegasus->usb,
			  FUNC11(pegasus->usb, 1),
			  pegasus->rx_skb->data, PEGASUS_MTU,
			  read_bulk_callback, pegasus);
	if ((res = FUNC13(pegasus->rx_urb, GFP_KERNEL))) {
		if (res == -ENODEV)
			FUNC4(pegasus->net);
		FUNC3(pegasus, ifup, net, "failed rx_urb, %d\n", res);
		goto exit;
	}

	FUNC9(pegasus->intr_urb, pegasus->usb,
			 FUNC12(pegasus->usb, 3),
			 pegasus->intr_buff, sizeof(pegasus->intr_buff),
			 intr_callback, pegasus, pegasus->intr_interval);
	if ((res = FUNC13(pegasus->intr_urb, GFP_KERNEL))) {
		if (res == -ENODEV)
			FUNC4(pegasus->net);
		FUNC3(pegasus, ifup, net, "failed intr_urb, %d\n", res);
		FUNC10(pegasus->rx_urb);
		goto exit;
	}
	res = FUNC1(net, pegasus->usb);
	if (res < 0) {
		FUNC3(pegasus, ifup, net,
			  "can't enable_net_traffic() - %d\n", res);
		res = -EIO;
		FUNC10(pegasus->rx_urb);
		FUNC10(pegasus->intr_urb);
		goto exit;
	}
	FUNC6(net);
	FUNC5(net);
	FUNC3(pegasus, ifup, net, "open\n");
	res = 0;
exit:
	return res;
}
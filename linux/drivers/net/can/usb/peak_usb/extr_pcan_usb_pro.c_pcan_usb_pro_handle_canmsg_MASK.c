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
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct peak_usb_device {struct net_device* netdev; } ;
struct pcan_usb_pro_rxmsg {int len; int flags; int /*<<< orphan*/  ts32; int /*<<< orphan*/  data; int /*<<< orphan*/  id; } ;
struct pcan_usb_pro_interface {int /*<<< orphan*/  time_ref; struct peak_usb_device** dev; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct can_frame {int can_dlc; int /*<<< orphan*/  data; int /*<<< orphan*/  can_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_EFF_FLAG ; 
 int /*<<< orphan*/  CAN_RTR_FLAG ; 
 int ENOMEM ; 
 int PCAN_USBPRO_EXT ; 
 int PCAN_USBPRO_RTR ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct skb_shared_hwtstamps* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct pcan_usb_pro_interface *usb_if,
				      struct pcan_usb_pro_rxmsg *rx)
{
	const unsigned int ctrl_idx = (rx->len >> 4) & 0x0f;
	struct peak_usb_device *dev = usb_if->dev[ctrl_idx];
	struct net_device *netdev = dev->netdev;
	struct can_frame *can_frame;
	struct sk_buff *skb;
	struct skb_shared_hwtstamps *hwts;

	skb = FUNC0(netdev, &can_frame);
	if (!skb)
		return -ENOMEM;

	can_frame->can_id = FUNC1(rx->id);
	can_frame->can_dlc = rx->len & 0x0f;

	if (rx->flags & PCAN_USBPRO_EXT)
		can_frame->can_id |= CAN_EFF_FLAG;

	if (rx->flags & PCAN_USBPRO_RTR)
		can_frame->can_id |= CAN_RTR_FLAG;
	else
		FUNC2(can_frame->data, rx->data, can_frame->can_dlc);

	hwts = FUNC5(skb);
	FUNC4(&usb_if->time_ref, FUNC1(rx->ts32),
			     &hwts->hwtstamp);

	netdev->stats.rx_packets++;
	netdev->stats.rx_bytes += can_frame->can_dlc;
	FUNC3(skb);

	return 0;
}
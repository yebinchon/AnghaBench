#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct asix_rx_fixup_info {int remaining; int header; int split_head; int /*<<< orphan*/ * ax_skb; } ;
struct TYPE_4__ {int mtu; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int FUNC0 (scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct asix_rx_fixup_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,int /*<<< orphan*/ *) ; 

int FUNC8(struct usbnet *dev, struct sk_buff *skb,
			   struct asix_rx_fixup_info *rx)
{
	int offset = 0;
	u16 size;

	/* When an Ethernet frame spans multiple URB socket buffers,
	 * do a sanity test for the Data header synchronisation.
	 * Attempt to detect the situation of the previous socket buffer having
	 * been truncated or a socket buffer was missing. These situations
	 * cause a discontinuity in the data stream and therefore need to avoid
	 * appending bad data to the end of the current netdev socket buffer.
	 * Also avoid unnecessarily discarding a good current netdev socket
	 * buffer.
	 */
	if (rx->remaining && (rx->remaining + sizeof(u32) <= skb->len)) {
		offset = ((rx->remaining + 1) & 0xfffe);
		rx->header = FUNC1(skb->data + offset);
		offset = 0;

		size = (u16)(rx->header & 0x7ff);
		if (size != ((~rx->header >> 16) & 0x7ff)) {
			FUNC4(dev->net, "asix_rx_fixup() Data Header synchronisation was lost, remaining %d\n",
				   rx->remaining);
			FUNC5(rx);
		}
	}

	while (offset + sizeof(u16) <= skb->len) {
		u16 copy_length;

		if (!rx->remaining) {
			if (skb->len - offset == sizeof(u16)) {
				rx->header = FUNC0(
						skb->data + offset);
				rx->split_head = true;
				offset += sizeof(u16);
				break;
			}

			if (rx->split_head == true) {
				rx->header |= (FUNC0(
						skb->data + offset) << 16);
				rx->split_head = false;
				offset += sizeof(u16);
			} else {
				rx->header = FUNC1(skb->data +
								offset);
				offset += sizeof(u32);
			}

			/* take frame length from Data header 32-bit word */
			size = (u16)(rx->header & 0x7ff);
			if (size != ((~rx->header >> 16) & 0x7ff)) {
				FUNC4(dev->net, "asix_rx_fixup() Bad Header Length 0x%x, offset %d\n",
					   rx->header, offset);
				FUNC5(rx);
				return 0;
			}
			if (size > dev->net->mtu + ETH_HLEN + VLAN_HLEN) {
				FUNC3(dev->net, "asix_rx_fixup() Bad RX Length %d\n",
					   size);
				FUNC5(rx);
				return 0;
			}

			/* Sometimes may fail to get a netdev socket buffer but
			 * continue to process the URB socket buffer so that
			 * synchronisation of the Ethernet frame Data header
			 * word is maintained.
			 */
			rx->ax_skb = FUNC2(dev->net, size);

			rx->remaining = size;
		}

		if (rx->remaining > skb->len - offset) {
			copy_length = skb->len - offset;
			rx->remaining -= copy_length;
		} else {
			copy_length = rx->remaining;
			rx->remaining = 0;
		}

		if (rx->ax_skb) {
			FUNC6(rx->ax_skb, skb->data + offset,
				     copy_length);
			if (!rx->remaining) {
				FUNC7(dev, rx->ax_skb);
				rx->ax_skb = NULL;
			}
		}

		offset += (copy_length + 1) & 0xfffe;
	}

	if (skb->len != offset) {
		FUNC4(dev->net, "asix_rx_fixup() Bad SKB Length %d, %d\n",
			   skb->len, offset);
		FUNC5(rx);
		return 0;
	}

	return 1;
}
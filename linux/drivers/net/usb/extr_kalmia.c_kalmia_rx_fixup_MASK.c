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
typedef  int u8 ;
typedef  int u16 ;
struct usbnet {int /*<<< orphan*/  net; } ;
struct sk_buff {int len; int* data; } ;
typedef  int /*<<< orphan*/  HEADER_END_OF_USB_PACKET ;
typedef  int /*<<< orphan*/  EXPECTED_UNKNOWN_HEADER_2 ;
typedef  int /*<<< orphan*/  EXPECTED_UNKNOWN_HEADER_1 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int KALMIA_HEADER_LENGTH ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*,int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int
FUNC9(struct usbnet *dev, struct sk_buff *skb)
{
	/*
	 * Our task here is to strip off framing, leaving skb with one
	 * data frame for the usbnet framework code to process.
	 */
	static const u8 HEADER_END_OF_USB_PACKET[] =
		{ 0x57, 0x5a, 0x00, 0x00, 0x08, 0x00 };
	static const u8 EXPECTED_UNKNOWN_HEADER_1[] =
		{ 0x57, 0x43, 0x1e, 0x00, 0x15, 0x02 };
	static const u8 EXPECTED_UNKNOWN_HEADER_2[] =
		{ 0x57, 0x50, 0x0e, 0x00, 0x00, 0x00 };
	int i = 0;

	/* incomplete header? */
	if (skb->len < KALMIA_HEADER_LENGTH)
		return 0;

	do {
		struct sk_buff *skb2 = NULL;
		u8 *header_start;
		u16 usb_packet_length, ether_packet_length;
		int is_last;

		header_start = skb->data;

		if (FUNC7(header_start[0] != 0x57 || header_start[1] != 0x44)) {
			if (!FUNC1(header_start, EXPECTED_UNKNOWN_HEADER_1,
				sizeof(EXPECTED_UNKNOWN_HEADER_1)) || !FUNC1(
				header_start, EXPECTED_UNKNOWN_HEADER_2,
				sizeof(EXPECTED_UNKNOWN_HEADER_2))) {
				FUNC2(dev->net,
					"Received expected unknown frame header: %6phC. Package length: %i\n",
					header_start,
					skb->len - KALMIA_HEADER_LENGTH);
			}
			else {
				FUNC3(dev->net,
					"Received unknown frame header: %6phC. Package length: %i\n",
					header_start,
					skb->len - KALMIA_HEADER_LENGTH);
				return 0;
			}
		}
		else
			FUNC2(dev->net,
				"Received header: %6phC. Package length: %i\n",
				header_start, skb->len - KALMIA_HEADER_LENGTH);

		/* subtract start header and end header */
		usb_packet_length = skb->len - (2 * KALMIA_HEADER_LENGTH);
		ether_packet_length = FUNC0(&header_start[2]);
		FUNC5(skb, KALMIA_HEADER_LENGTH);

		/* Some small packets misses end marker */
		if (usb_packet_length < ether_packet_length) {
			ether_packet_length = usb_packet_length
				+ KALMIA_HEADER_LENGTH;
			is_last = true;
		}
		else {
			FUNC2(dev->net, "Correct package length #%i", i
				+ 1);

			is_last = (FUNC1(skb->data + ether_packet_length,
				HEADER_END_OF_USB_PACKET,
				sizeof(HEADER_END_OF_USB_PACKET)) == 0);
			if (!is_last) {
				header_start = skb->data + ether_packet_length;
				FUNC2(dev->net,
					"End header: %6phC. Package length: %i\n",
					header_start,
					skb->len - KALMIA_HEADER_LENGTH);
			}
		}

		if (is_last) {
			skb2 = skb;
		}
		else {
			skb2 = FUNC4(skb, GFP_ATOMIC);
			if (FUNC7(!skb2))
				return 0;
		}

		FUNC6(skb2, ether_packet_length);

		if (is_last) {
			return 1;
		}
		else {
			FUNC8(dev, skb2);
			FUNC5(skb, ether_packet_length);
		}

		i++;
	}
	while (skb->len);

	return 1;
}
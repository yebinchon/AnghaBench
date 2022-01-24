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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; unsigned char* data; int truesize; } ;
struct lan78xx_net {TYPE_1__* net; } ;
typedef  int /*<<< orphan*/  rx_cmd_c ;
typedef  int /*<<< orphan*/  rx_cmd_b ;
typedef  int /*<<< orphan*/  rx_cmd_a ;
struct TYPE_3__ {scalar_t__ hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int RXW_PADDING ; 
 int RX_CMD_A_LEN_MASK_ ; 
 int RX_CMD_A_RED_ ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan78xx_net*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lan78xx_net*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lan78xx_net*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct lan78xx_net*,int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  rx_err ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct lan78xx_net *dev, struct sk_buff *skb)
{
	if (skb->len < dev->net->hard_header_len)
		return 0;

	while (skb->len > 0) {
		u32 rx_cmd_a, rx_cmd_b, align_count, size;
		u16 rx_cmd_c;
		struct sk_buff *skb2;
		unsigned char *packet;

		rx_cmd_a = FUNC1(skb->data);
		FUNC8(skb, sizeof(rx_cmd_a));

		rx_cmd_b = FUNC1(skb->data);
		FUNC8(skb, sizeof(rx_cmd_b));

		rx_cmd_c = FUNC0(skb->data);
		FUNC8(skb, sizeof(rx_cmd_c));

		packet = skb->data;

		/* get the packet length */
		size = (rx_cmd_a & RX_CMD_A_LEN_MASK_);
		align_count = (4 - ((size + RXW_PADDING) % 4)) % 4;

		if (FUNC11(rx_cmd_a & RX_CMD_A_RED_)) {
			FUNC6(dev, rx_err, dev->net,
				  "Error rx_cmd_a=0x%08x", rx_cmd_a);
		} else {
			/* last frame in this batch */
			if (skb->len == size) {
				FUNC2(dev, skb,
							rx_cmd_a, rx_cmd_b);
				FUNC3(dev, skb,
							rx_cmd_a, rx_cmd_b);

				FUNC10(skb, skb->len - 4); /* remove fcs */
				skb->truesize = size + sizeof(struct sk_buff);

				return 1;
			}

			skb2 = FUNC7(skb, GFP_ATOMIC);
			if (FUNC11(!skb2)) {
				FUNC5(dev->net, "Error allocating skb");
				return 0;
			}

			skb2->len = size;
			skb2->data = packet;
			FUNC9(skb2, size);

			FUNC2(dev, skb2, rx_cmd_a, rx_cmd_b);
			FUNC3(dev, skb2, rx_cmd_a, rx_cmd_b);

			FUNC10(skb2, skb2->len - 4); /* remove fcs */
			skb2->truesize = size + sizeof(struct sk_buff);

			FUNC4(dev, skb2);
		}

		FUNC8(skb, size);

		/* padding bytes before the next frame starts */
		if (skb->len)
			FUNC8(skb, align_count);
	}

	return 1;
}
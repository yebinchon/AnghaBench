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
struct sk_buff {int dummy; } ;
struct lbs_private {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPFIELD_ALIGN_OFFSET ; 
 int MESSAGE_HEADER_LEN ; 
 int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ; 
 int MRVDRV_MIN_PKT_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(int recvlength, struct sk_buff *skb,
				       struct if_usb_card *cardp,
				       struct lbs_private *priv)
{
	if (recvlength > MRVDRV_ETH_RX_PACKET_BUFFER_SIZE + MESSAGE_HEADER_LEN
	    || recvlength < MRVDRV_MIN_PKT_LEN) {
		FUNC1(&cardp->udev->dev, "Packet length is Invalid\n");
		FUNC0(skb);
		return;
	}

	FUNC5(skb, IPFIELD_ALIGN_OFFSET);
	FUNC4(skb, recvlength);
	FUNC3(skb, MESSAGE_HEADER_LEN);

	FUNC2(priv, skb);
}
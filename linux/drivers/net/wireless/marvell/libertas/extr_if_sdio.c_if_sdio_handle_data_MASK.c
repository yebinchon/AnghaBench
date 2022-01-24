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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct if_sdio_card {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 unsigned int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ; 
 unsigned int NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct if_sdio_card *card,
		u8 *buffer, unsigned size)
{
	int ret;
	struct sk_buff *skb;

	if (size > MRVDRV_ETH_RX_PACKET_BUFFER_SIZE) {
		FUNC1("response packet too large (%d bytes)\n",
			(int)size);
		ret = -E2BIG;
		goto out;
	}

	skb = FUNC0(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE + NET_IP_ALIGN);
	if (!skb) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC4(skb, NET_IP_ALIGN);

	FUNC3(skb, buffer, size);

	FUNC2(card->priv, skb);

	ret = 0;

out:
	return ret;
}
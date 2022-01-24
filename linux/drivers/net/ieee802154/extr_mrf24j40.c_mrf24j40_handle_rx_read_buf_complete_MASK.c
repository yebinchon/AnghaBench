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
struct mrf24j40 {int /*<<< orphan*/ * rx_lqi_buf; int /*<<< orphan*/  hw; int /*<<< orphan*/  rx_fifo_buf; int /*<<< orphan*/ * rx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  IEEE802154_MTU ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int RX_FIFO_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *context)
{
	struct mrf24j40 *devrec = context;
	u8 len = devrec->rx_buf[2];
	u8 rx_local_buf[RX_FIFO_SIZE];
	struct sk_buff *skb;

	FUNC3(rx_local_buf, devrec->rx_fifo_buf, len);
	FUNC4(devrec);

	skb = FUNC0(IEEE802154_MTU);
	if (!skb) {
		FUNC1(FUNC7(devrec), "failed to allocate skb\n");
		return;
	}

	FUNC8(skb, rx_local_buf, len);
	FUNC2(devrec->hw, skb, 0);

#ifdef DEBUG
	 print_hex_dump(KERN_DEBUG, "mrf24j40 rx: ", DUMP_PREFIX_OFFSET, 16, 1,
			rx_local_buf, len, 0);
	 pr_debug("mrf24j40 rx: lqi: %02hhx rssi: %02hhx\n",
		  devrec->rx_lqi_buf[0], devrec->rx_lqi_buf[1]);
#endif
}
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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int /*<<< orphan*/  last_rx_timestamp; int /*<<< orphan*/  q_vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_RXDADV_STAT_TS ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_TSIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct ixgbe_ring *rx_ring,
					 union ixgbe_adv_rx_desc *rx_desc,
					 struct sk_buff *skb)
{
	if (FUNC3(FUNC2(rx_desc, IXGBE_RXD_STAT_TSIP))) {
		FUNC0(rx_ring->q_vector, skb);
		return;
	}

	if (FUNC3(!FUNC2(rx_desc, IXGBE_RXDADV_STAT_TS)))
		return;

	FUNC1(rx_ring->q_vector, skb);

	/* Update the last_rx_timestamp timer in order to enable watchdog check
	 * for error case of latched timestamp on a dropped packet.
	 */
	rx_ring->last_rx_timestamp = jiffies;
}
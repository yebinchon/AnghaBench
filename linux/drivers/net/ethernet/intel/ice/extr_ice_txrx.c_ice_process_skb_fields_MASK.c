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
typedef  union ice_32b_rx_flex_desc {int dummy; } ice_32b_rx_flex_desc ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct ice_ring {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_ring*,struct sk_buff*,union ice_32b_rx_flex_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_ring*,union ice_32b_rx_flex_desc*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ice_ring *rx_ring,
		       union ice_32b_rx_flex_desc *rx_desc,
		       struct sk_buff *skb, u8 ptype)
{
	FUNC2(rx_ring, rx_desc, skb, ptype);

	/* modifies the skb - consumes the enet header */
	skb->protocol = FUNC0(skb, rx_ring->netdev);

	FUNC1(rx_ring, skb, rx_desc, ptype);
}
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
typedef  union iavf_rx_desc {int dummy; } iavf_rx_desc ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct iavf_ring {int /*<<< orphan*/  netdev; int /*<<< orphan*/  queue_index; int /*<<< orphan*/  vsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,union iavf_rx_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_ring*,union iavf_rx_desc*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
void FUNC4(struct iavf_ring *rx_ring,
			     union iavf_rx_desc *rx_desc, struct sk_buff *skb,
			     u8 rx_ptype)
{
	FUNC2(rx_ring, rx_desc, skb, rx_ptype);

	FUNC1(rx_ring->vsi, skb, rx_desc);

	FUNC3(skb, rx_ring->queue_index);

	/* modifies the skb - consumes the enet header */
	skb->protocol = FUNC0(skb, rx_ring->netdev);
}
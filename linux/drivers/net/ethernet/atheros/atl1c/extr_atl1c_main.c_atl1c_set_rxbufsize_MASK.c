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
struct skb_shared_info {int dummy; } ;
struct net_device {int mtu; } ;
struct atl1c_adapter {int rx_buffer_len; int /*<<< orphan*/  rx_frag_size; } ;

/* Variables and functions */
 int AT_RX_BUF_SIZE ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 int NET_SKB_PAD ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ VLAN_HLEN ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(struct atl1c_adapter *adapter,
				struct net_device *dev)
{
	unsigned int head_size;
	int mtu = dev->mtu;

	adapter->rx_buffer_len = mtu > AT_RX_BUF_SIZE ?
		FUNC1(mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN, 8) : AT_RX_BUF_SIZE;

	head_size = FUNC0(adapter->rx_buffer_len + NET_SKB_PAD) +
		    FUNC0(sizeof(struct skb_shared_info));
	adapter->rx_frag_size = FUNC2(head_size);
}
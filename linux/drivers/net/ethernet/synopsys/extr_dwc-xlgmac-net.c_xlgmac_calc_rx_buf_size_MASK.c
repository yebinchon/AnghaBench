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
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int ETH_FCS_LEN ; 
 unsigned int ETH_HLEN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int VLAN_HLEN ; 
 unsigned int XLGMAC_JUMBO_PACKET_MTU ; 
 unsigned int XLGMAC_RX_BUF_ALIGN ; 
 int /*<<< orphan*/  XLGMAC_RX_MIN_BUF_SIZE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev, unsigned int mtu)
{
	unsigned int rx_buf_size;

	if (mtu > XLGMAC_JUMBO_PACKET_MTU) {
		FUNC1(netdev, "MTU exceeds maximum supported value\n");
		return -EINVAL;
	}

	rx_buf_size = mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
	rx_buf_size = FUNC0(rx_buf_size, XLGMAC_RX_MIN_BUF_SIZE, PAGE_SIZE);

	rx_buf_size = (rx_buf_size + XLGMAC_RX_BUF_ALIGN - 1) &
		      ~(XLGMAC_RX_BUF_ALIGN - 1);

	return rx_buf_size;
}
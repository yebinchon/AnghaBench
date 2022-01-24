#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int max_frame_size; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct pch_gbe_adapter {unsigned long rx_buffer_len; TYPE_2__ hw; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int PCH_GBE_FRAME_SIZE_2048 ; 
 int PCH_GBE_FRAME_SIZE_4096 ; 
 int PCH_GBE_FRAME_SIZE_8192 ; 
 int PCH_GBE_MAX_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int,int /*<<< orphan*/ ,int,int) ; 
 struct pch_gbe_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*) ; 
 int FUNC5 (struct pch_gbe_adapter*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, int new_mtu)
{
	struct pch_gbe_adapter *adapter = FUNC1(netdev);
	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN;
	unsigned long old_rx_buffer_len = adapter->rx_buffer_len;
	int err;

	if (max_frame <= PCH_GBE_FRAME_SIZE_2048)
		adapter->rx_buffer_len = PCH_GBE_FRAME_SIZE_2048;
	else if (max_frame <= PCH_GBE_FRAME_SIZE_4096)
		adapter->rx_buffer_len = PCH_GBE_FRAME_SIZE_4096;
	else if (max_frame <= PCH_GBE_FRAME_SIZE_8192)
		adapter->rx_buffer_len = PCH_GBE_FRAME_SIZE_8192;
	else
		adapter->rx_buffer_len = PCH_GBE_MAX_RX_BUFFER_SIZE;

	if (FUNC2(netdev)) {
		FUNC3(adapter);
		err = FUNC5(adapter);
		if (err) {
			adapter->rx_buffer_len = old_rx_buffer_len;
			FUNC5(adapter);
			return err;
		} else {
			netdev->mtu = new_mtu;
			adapter->hw.mac.max_frame_size = max_frame;
		}
	} else {
		FUNC4(adapter);
		netdev->mtu = new_mtu;
		adapter->hw.mac.max_frame_size = max_frame;
	}

	FUNC0(netdev,
		   "max_frame : %d  rx_buffer_len : %d  mtu : %d  max_frame_size : %d\n",
		   max_frame, (u32) adapter->rx_buffer_len, netdev->mtu,
		   adapter->hw.mac.max_frame_size);
	return 0;
}
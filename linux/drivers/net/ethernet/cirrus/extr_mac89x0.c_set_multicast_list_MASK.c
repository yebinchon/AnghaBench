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
struct net_local {int rx_mode; int curr_rx_cfg; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int DEF_RX_ACCEPT ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  PP_RxCFG ; 
 int /*<<< orphan*/  PP_RxCTL ; 
 int RX_ALL_ACCEPT ; 
 int RX_CRC_ERROR_ENBL ; 
 int RX_EXTRA_DATA_ENBL ; 
 int RX_MULTCAST_ACCEPT ; 
 int RX_RUNT_ENBL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct net_local *lp = FUNC1(dev);

	if(dev->flags&IFF_PROMISC)
	{
		lp->rx_mode = RX_ALL_ACCEPT;
	} else if ((dev->flags & IFF_ALLMULTI) || !FUNC0(dev)) {
		/* The multicast-accept list is initialized to accept-all, and we
		   rely on higher-level filtering for now. */
		lp->rx_mode = RX_MULTCAST_ACCEPT;
	}
	else
		lp->rx_mode = 0;

	FUNC2(dev, PP_RxCTL, DEF_RX_ACCEPT | lp->rx_mode);

	/* in promiscuous mode, we accept errored packets, so we have to enable interrupts on them also */
	FUNC2(dev, PP_RxCFG, lp->curr_rx_cfg |
	     (lp->rx_mode == RX_ALL_ACCEPT? (RX_CRC_ERROR_ENBL|RX_RUNT_ENBL|RX_EXTRA_DATA_ENBL) : 0));
}
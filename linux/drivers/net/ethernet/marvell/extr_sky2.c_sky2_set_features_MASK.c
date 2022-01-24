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
struct sky2_port {size_t port; TYPE_1__* hw; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMU_DIS_RX_CHKSUM ; 
 int /*<<< orphan*/  BMU_ENA_RX_CHKSUM ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int SKY2_HW_NEW_LE ; 
 struct sky2_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, netdev_features_t features)
{
	struct sky2_port *sky2 = FUNC1(dev);
	netdev_features_t changed = dev->features ^ features;

	if ((changed & NETIF_F_RXCSUM) &&
	    !(sky2->hw->flags & SKY2_HW_NEW_LE)) {
		FUNC4(sky2->hw,
			     FUNC0(rxqaddr[sky2->port], Q_CSR),
			     (features & NETIF_F_RXCSUM)
			     ? BMU_ENA_RX_CHKSUM : BMU_DIS_RX_CHKSUM);
	}

	if (changed & NETIF_F_RXHASH)
		FUNC2(dev, features);

	if (changed & (NETIF_F_HW_VLAN_CTAG_TX|NETIF_F_HW_VLAN_CTAG_RX))
		FUNC3(dev, features);

	return 0;
}
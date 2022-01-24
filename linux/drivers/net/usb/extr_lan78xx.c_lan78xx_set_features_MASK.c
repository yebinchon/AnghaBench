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
struct lan78xx_priv {int rfe_ctl; int /*<<< orphan*/  rfe_ctl_lock; } ;
struct lan78xx_net {scalar_t__* data; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  RFE_CTL ; 
 int RFE_CTL_ICMP_COE_ ; 
 int RFE_CTL_IGMP_COE_ ; 
 int RFE_CTL_IP_COE_ ; 
 int RFE_CTL_TCPUDP_COE_ ; 
 int RFE_CTL_VLAN_FILTER_ ; 
 int RFE_CTL_VLAN_STRIP_ ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 struct lan78xx_net* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
				netdev_features_t features)
{
	struct lan78xx_net *dev = FUNC1(netdev);
	struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);
	unsigned long flags;
	int ret;

	FUNC2(&pdata->rfe_ctl_lock, flags);

	if (features & NETIF_F_RXCSUM) {
		pdata->rfe_ctl |= RFE_CTL_TCPUDP_COE_ | RFE_CTL_IP_COE_;
		pdata->rfe_ctl |= RFE_CTL_ICMP_COE_ | RFE_CTL_IGMP_COE_;
	} else {
		pdata->rfe_ctl &= ~(RFE_CTL_TCPUDP_COE_ | RFE_CTL_IP_COE_);
		pdata->rfe_ctl &= ~(RFE_CTL_ICMP_COE_ | RFE_CTL_IGMP_COE_);
	}

	if (features & NETIF_F_HW_VLAN_CTAG_RX)
		pdata->rfe_ctl |= RFE_CTL_VLAN_STRIP_;
	else
		pdata->rfe_ctl &= ~RFE_CTL_VLAN_STRIP_;

	if (features & NETIF_F_HW_VLAN_CTAG_FILTER)
		pdata->rfe_ctl |= RFE_CTL_VLAN_FILTER_;
	else
		pdata->rfe_ctl &= ~RFE_CTL_VLAN_FILTER_;

	FUNC3(&pdata->rfe_ctl_lock, flags);

	ret = FUNC0(dev, RFE_CTL, pdata->rfe_ctl);

	return 0;
}
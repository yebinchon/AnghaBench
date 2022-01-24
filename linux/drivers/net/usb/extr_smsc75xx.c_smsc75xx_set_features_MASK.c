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
struct usbnet {int /*<<< orphan*/  net; scalar_t__* data; } ;
struct smsc75xx_priv {int rfe_ctl; int /*<<< orphan*/  rfe_ctl_lock; } ;
struct net_device {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  RFE_CTL ; 
 int RFE_CTL_IP_CKM ; 
 int RFE_CTL_TCPUDP_CKM ; 
 struct usbnet* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
	netdev_features_t features)
{
	struct usbnet *dev = FUNC0(netdev);
	struct smsc75xx_priv *pdata = (struct smsc75xx_priv *)(dev->data[0]);
	unsigned long flags;
	int ret;

	FUNC3(&pdata->rfe_ctl_lock, flags);

	if (features & NETIF_F_RXCSUM)
		pdata->rfe_ctl |= RFE_CTL_TCPUDP_CKM | RFE_CTL_IP_CKM;
	else
		pdata->rfe_ctl &= ~(RFE_CTL_TCPUDP_CKM | RFE_CTL_IP_CKM);

	FUNC4(&pdata->rfe_ctl_lock, flags);
	/* it's racing here! */

	ret = FUNC2(dev, RFE_CTL, pdata->rfe_ctl);
	if (ret < 0) {
		FUNC1(dev->net, "Error writing RFE_CTL\n");
		return ret;
	}
	return 0;
}
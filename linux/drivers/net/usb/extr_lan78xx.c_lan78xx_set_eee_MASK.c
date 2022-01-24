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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  phydev; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; } ;
struct ethtool_eee {scalar_t__ tx_lpi_timer; scalar_t__ eee_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEE_TX_LPI_REQ_DLY ; 
 int /*<<< orphan*/  MAC_CR ; 
 int /*<<< orphan*/  MAC_CR_EEE_EN_ ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lan78xx_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ethtool_eee*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *net, struct ethtool_eee *edata)
{
	struct lan78xx_net *dev = FUNC2(net);
	int ret;
	u32 buf;

	ret = FUNC4(dev->intf);
	if (ret < 0)
		return ret;

	if (edata->eee_enabled) {
		ret = FUNC0(dev, MAC_CR, &buf);
		buf |= MAC_CR_EEE_EN_;
		ret = FUNC1(dev, MAC_CR, buf);

		FUNC3(net->phydev, edata);

		buf = (u32)edata->tx_lpi_timer;
		ret = FUNC1(dev, EEE_TX_LPI_REQ_DLY, buf);
	} else {
		ret = FUNC0(dev, MAC_CR, &buf);
		buf &= ~MAC_CR_EEE_EN_;
		ret = FUNC1(dev, MAC_CR, buf);
	}

	FUNC5(dev->intf);

	return 0;
}
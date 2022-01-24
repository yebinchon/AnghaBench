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
typedef  int u32 ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; } ;
struct ethtool_eee {int eee_enabled; int eee_active; int advertised; int lp_advertised; int tx_lpi_enabled; int tx_lpi_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEE_TX_LPI_REQ_DLY ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_EEE_EN_ ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 struct lan78xx_net* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct phy_device*,struct ethtool_eee*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *net, struct ethtool_eee *edata)
{
	struct lan78xx_net *dev = FUNC1(net);
	struct phy_device *phydev = net->phydev;
	int ret;
	u32 buf;

	ret = FUNC3(dev->intf);
	if (ret < 0)
		return ret;

	ret = FUNC2(phydev, edata);
	if (ret < 0)
		goto exit;

	ret = FUNC0(dev, MAC_CR, &buf);
	if (buf & MAC_CR_EEE_EN_) {
		edata->eee_enabled = true;
		edata->eee_active = !!(edata->advertised &
				       edata->lp_advertised);
		edata->tx_lpi_enabled = true;
		/* EEE_TX_LPI_REQ_DLY & tx_lpi_timer are same uSec unit */
		ret = FUNC0(dev, EEE_TX_LPI_REQ_DLY, &buf);
		edata->tx_lpi_timer = buf;
	} else {
		edata->eee_enabled = false;
		edata->eee_active = false;
		edata->tx_lpi_enabled = false;
		edata->tx_lpi_timer = 0;
	}

	ret = 0;
exit:
	FUNC4(dev->intf);

	return ret;
}
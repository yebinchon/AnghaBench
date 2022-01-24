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
typedef  int u8 ;
struct usbnet {int can_dma_sg; TYPE_1__* net; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_urb_size; struct aqc111_data* driver_priv; } ;
struct aqc111_data {int /*<<< orphan*/  advertised_speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  phy_cfg; } ;
struct TYPE_2__ {int* dev_addr; int /*<<< orphan*/  vlan_features; int /*<<< orphan*/  features; int /*<<< orphan*/  hw_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_ACCESS_MAC ; 
 int /*<<< orphan*/  AQ_PHY_OPS ; 
 int /*<<< orphan*/  AQ_PHY_POWER_EN ; 
 int /*<<< orphan*/  AQ_SUPPORT_FEATURE ; 
 int /*<<< orphan*/  AQ_SUPPORT_HW_FEATURE ; 
 int /*<<< orphan*/  AQ_SUPPORT_VLAN_FEATURE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  SFR_BM_INT_MASK ; 
 int /*<<< orphan*/  SFR_MONITOR_MODE ; 
 int SFR_MONITOR_MODE_EPHYRW ; 
 int SFR_MONITOR_MODE_RWLC ; 
 int SFR_MONITOR_MODE_RWMP ; 
 int SFR_MONITOR_MODE_RWWF ; 
 int SFR_MONITOR_MODE_RW_FLAG ; 
 int /*<<< orphan*/  SFR_NODE_ID ; 
 int /*<<< orphan*/  SFR_SWP_CTRL ; 
 int /*<<< orphan*/  URB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev)
{
	struct aqc111_data *aqc111_data = dev->driver_priv;
	u8 reg8 = 0;

	dev->rx_urb_size = URB_SIZE;

	if (FUNC5(dev->udev))
		dev->can_dma_sg = 1;

	dev->net->hw_features |= AQ_SUPPORT_HW_FEATURE;
	dev->net->features |= AQ_SUPPORT_FEATURE;
	dev->net->vlan_features |= AQ_SUPPORT_VLAN_FEATURE;

	/* Power up ethernet PHY */
	aqc111_data->phy_cfg = AQ_PHY_POWER_EN;
	FUNC2(dev, AQ_PHY_OPS, 0, 0,
			   &aqc111_data->phy_cfg);

	/* Set the MAC address */
	FUNC3(dev, AQ_ACCESS_MAC, SFR_NODE_ID, ETH_ALEN,
			 ETH_ALEN, dev->net->dev_addr);

	reg8 = 0xFF;
	FUNC3(dev, AQ_ACCESS_MAC, SFR_BM_INT_MASK, 1, 1, &reg8);

	reg8 = 0x0;
	FUNC3(dev, AQ_ACCESS_MAC, SFR_SWP_CTRL, 1, 1, &reg8);

	FUNC0(dev, AQ_ACCESS_MAC, SFR_MONITOR_MODE, 1, 1, &reg8);
	reg8 &= ~(SFR_MONITOR_MODE_EPHYRW | SFR_MONITOR_MODE_RWLC |
		  SFR_MONITOR_MODE_RWMP | SFR_MONITOR_MODE_RWWF |
		  SFR_MONITOR_MODE_RW_FLAG);
	FUNC3(dev, AQ_ACCESS_MAC, SFR_MONITOR_MODE, 1, 1, &reg8);

	FUNC4(dev->net);

	/* Phy advertise */
	FUNC1(dev, aqc111_data->autoneg,
			     aqc111_data->advertised_speed);

	return 0;
}
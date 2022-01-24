#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct usbnet {TYPE_1__* net; struct aqc111_data* driver_priv; } ;
struct aqc111_data {int link; int rxctl; } ;
struct TYPE_4__ {int features; int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_ACCESS_MAC ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int /*<<< orphan*/  SFR_ARC_CTRL ; 
 int /*<<< orphan*/  SFR_BMRX_DMA_CONTROL ; 
 int /*<<< orphan*/  SFR_BMTX_DMA_CONTROL ; 
 int /*<<< orphan*/  SFR_BULK_OUT_CTRL ; 
 int SFR_BULK_OUT_EFF_EN ; 
 int SFR_BULK_OUT_FLUSH_EN ; 
 int /*<<< orphan*/  SFR_ETH_MAC_PATH ; 
 int SFR_MEDIUM_FULL_DUPLEX ; 
 int SFR_MEDIUM_JUMBO_EN ; 
 int SFR_MEDIUM_RECEIVE_EN ; 
 int SFR_MEDIUM_RXFLOW_CTRLEN ; 
 int /*<<< orphan*/  SFR_MEDIUM_STATUS_MODE ; 
 int SFR_MEDIUM_TXFLOW_CTRLEN ; 
 int SFR_MEDIUM_XGMIIMODE ; 
 int /*<<< orphan*/  SFR_RX_CTL ; 
 int SFR_RX_CTL_AB ; 
 int SFR_RX_CTL_IPE ; 
 int SFR_RX_CTL_START ; 
 int SFR_RX_PATH_READY ; 
 int SFR_VLAN_CONTROL_VFE ; 
 int SFR_VLAN_CONTROL_VSO ; 
 int /*<<< orphan*/  SFR_VLAN_ID_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,struct aqc111_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct usbnet *dev)
{
	struct aqc111_data *aqc111_data = dev->driver_priv;
	u16 reg16 = 0;
	u8 reg8 = 0;

	if (aqc111_data->link == 1) { /* Link up */
		FUNC1(dev, aqc111_data);

		/* Vlan Tag Filter */
		reg8 = SFR_VLAN_CONTROL_VSO;
		if (dev->net->features & NETIF_F_HW_VLAN_CTAG_FILTER)
			reg8 |= SFR_VLAN_CONTROL_VFE;

		FUNC5(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_CONTROL,
				 1, 1, &reg8);

		reg8 = 0x0;
		FUNC5(dev, AQ_ACCESS_MAC, SFR_BMRX_DMA_CONTROL,
				 1, 1, &reg8);

		FUNC5(dev, AQ_ACCESS_MAC, SFR_BMTX_DMA_CONTROL,
				 1, 1, &reg8);

		FUNC5(dev, AQ_ACCESS_MAC, SFR_ARC_CTRL, 1, 1, &reg8);

		reg16 = SFR_RX_CTL_IPE | SFR_RX_CTL_AB;
		aqc111_data->rxctl = reg16;
		FUNC4(dev, AQ_ACCESS_MAC, SFR_RX_CTL, 2, &reg16);

		reg8 = SFR_RX_PATH_READY;
		FUNC5(dev, AQ_ACCESS_MAC, SFR_ETH_MAC_PATH,
				 1, 1, &reg8);

		reg8 = SFR_BULK_OUT_EFF_EN;
		FUNC5(dev, AQ_ACCESS_MAC, SFR_BULK_OUT_CTRL,
				 1, 1, &reg8);

		reg16 = 0;
		FUNC4(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
				   2, &reg16);

		reg16 = SFR_MEDIUM_XGMIIMODE | SFR_MEDIUM_FULL_DUPLEX;
		FUNC4(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
				   2, &reg16);

		FUNC0(dev);

		FUNC3(dev->net);

		FUNC2(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
				  2, &reg16);

		if (dev->net->mtu > 1500)
			reg16 |= SFR_MEDIUM_JUMBO_EN;

		reg16 |= SFR_MEDIUM_RECEIVE_EN | SFR_MEDIUM_RXFLOW_CTRLEN |
			 SFR_MEDIUM_TXFLOW_CTRLEN;
		FUNC4(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
				   2, &reg16);

		aqc111_data->rxctl |= SFR_RX_CTL_START;
		FUNC4(dev, AQ_ACCESS_MAC, SFR_RX_CTL,
				   2, &aqc111_data->rxctl);

		FUNC7(dev->net);
	} else {
		FUNC2(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
				  2, &reg16);
		reg16 &= ~SFR_MEDIUM_RECEIVE_EN;
		FUNC4(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
				   2, &reg16);

		aqc111_data->rxctl &= ~SFR_RX_CTL_START;
		FUNC4(dev, AQ_ACCESS_MAC, SFR_RX_CTL,
				   2, &aqc111_data->rxctl);

		reg8 = SFR_BULK_OUT_FLUSH_EN | SFR_BULK_OUT_EFF_EN;
		FUNC5(dev, AQ_ACCESS_MAC, SFR_BULK_OUT_CTRL,
				 1, 1, &reg8);
		reg8 = SFR_BULK_OUT_EFF_EN;
		FUNC5(dev, AQ_ACCESS_MAC, SFR_BULK_OUT_CTRL,
				 1, 1, &reg8);

		FUNC6(dev->net);
	}
	return 0;
}
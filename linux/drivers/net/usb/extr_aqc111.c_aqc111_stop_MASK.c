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
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int /*<<< orphan*/  net; struct aqc111_data* driver_priv; } ;
struct aqc111_data {int /*<<< orphan*/  phy_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_ACCESS_MAC ; 
 int /*<<< orphan*/  AQ_LOW_POWER ; 
 int /*<<< orphan*/  AQ_PHY_OPS ; 
 int /*<<< orphan*/  SFR_MEDIUM_RECEIVE_EN ; 
 int /*<<< orphan*/  SFR_MEDIUM_STATUS_MODE ; 
 int /*<<< orphan*/  SFR_RX_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev)
{
	struct aqc111_data *aqc111_data = dev->driver_priv;
	u16 reg16 = 0;

	FUNC0(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
			  2, &reg16);
	reg16 &= ~SFR_MEDIUM_RECEIVE_EN;
	FUNC1(dev, AQ_ACCESS_MAC, SFR_MEDIUM_STATUS_MODE,
			   2, &reg16);
	reg16 = 0;
	FUNC1(dev, AQ_ACCESS_MAC, SFR_RX_CTL, 2, &reg16);

	/* Put PHY to low power*/
	aqc111_data->phy_cfg |= AQ_LOW_POWER;
	FUNC2(dev, AQ_PHY_OPS, 0, 0,
			   &aqc111_data->phy_cfg);

	FUNC3(dev->net);

	return 0;
}
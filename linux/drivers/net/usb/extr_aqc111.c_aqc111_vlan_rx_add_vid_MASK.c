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
typedef  int u8 ;
typedef  int u16 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_ACCESS_MAC ; 
 int SFR_VLAN_CONTROL_RD ; 
 int SFR_VLAN_CONTROL_WE ; 
 int /*<<< orphan*/  SFR_VLAN_ID_ADDRESS ; 
 int /*<<< orphan*/  SFR_VLAN_ID_CONTROL ; 
 int /*<<< orphan*/  SFR_VLAN_ID_DATA0 ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 struct usbnet* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *net, __be16 proto, u16 vid)
{
	struct usbnet *dev = FUNC4(net);
	u8 vlan_ctrl = 0;
	u16 reg16 = 0;
	u8 reg8 = 0;

	FUNC1(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_CONTROL, 1, 1, &reg8);
	vlan_ctrl = reg8;

	/* Address */
	reg8 = (vid / 16);
	FUNC3(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_ADDRESS, 1, 1, &reg8);
	/* Data */
	reg8 = vlan_ctrl | SFR_VLAN_CONTROL_RD;
	FUNC3(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_CONTROL, 1, 1, &reg8);
	FUNC0(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_DATA0, 2, &reg16);
	reg16 |= (1 << (vid % 16));
	FUNC2(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_DATA0, 2, &reg16);
	reg8 = vlan_ctrl | SFR_VLAN_CONTROL_WE;
	FUNC3(dev, AQ_ACCESS_MAC, SFR_VLAN_ID_CONTROL, 1, 1, &reg8);

	return 0;
}
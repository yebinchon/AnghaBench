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
typedef  unsigned int u32 ;
struct xlgmac_pdata {TYPE_1__* netdev; scalar_t__ mac_regs; } ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 scalar_t__ MAC_PFR ; 
 int /*<<< orphan*/  MAC_PFR_PR_LEN ; 
 int /*<<< orphan*/  MAC_PFR_PR_POS ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*,int /*<<< orphan*/ ,TYPE_1__*,char*,char*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xlgmac_pdata*) ; 

__attribute__((used)) static int FUNC7(struct xlgmac_pdata *pdata,
				       unsigned int enable)
{
	unsigned int val = enable ? 1 : 0;
	u32 regval;

	regval = FUNC0(FUNC3(pdata->mac_regs + MAC_PFR),
				     MAC_PFR_PR_POS, MAC_PFR_PR_LEN);
	if (regval == val)
		return 0;

	FUNC2(pdata, drv, pdata->netdev, "%s promiscuous mode\n",
		  enable ? "entering" : "leaving");

	regval = FUNC3(pdata->mac_regs + MAC_PFR);
	regval = FUNC1(regval, MAC_PFR_PR_POS,
				     MAC_PFR_PR_LEN, val);
	FUNC4(regval, pdata->mac_regs + MAC_PFR);

	/* Hardware will still perform VLAN filtering in promiscuous mode */
	if (enable) {
		FUNC5(pdata);
	} else {
		if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
			FUNC6(pdata);
	}

	return 0;
}
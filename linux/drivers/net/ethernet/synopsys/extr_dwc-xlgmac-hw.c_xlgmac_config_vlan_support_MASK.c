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
typedef  int /*<<< orphan*/  u32 ;
struct xlgmac_pdata {TYPE_1__* netdev; scalar_t__ mac_regs; } ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 scalar_t__ MAC_VLANIR ; 
 int /*<<< orphan*/  MAC_VLANIR_CSVL_LEN ; 
 int /*<<< orphan*/  MAC_VLANIR_CSVL_POS ; 
 int /*<<< orphan*/  MAC_VLANIR_VLTI_LEN ; 
 int /*<<< orphan*/  MAC_VLANIR_VLTI_POS ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct xlgmac_pdata*) ; 

__attribute__((used)) static void FUNC8(struct xlgmac_pdata *pdata)
{
	u32 regval;

	regval = FUNC1(pdata->mac_regs + MAC_VLANIR);
	/* Indicate that VLAN Tx CTAGs come from context descriptors */
	regval = FUNC0(regval, MAC_VLANIR_CSVL_POS,
				     MAC_VLANIR_CSVL_LEN, 0);
	regval = FUNC0(regval, MAC_VLANIR_VLTI_POS,
				     MAC_VLANIR_VLTI_LEN, 1);
	FUNC2(regval, pdata->mac_regs + MAC_VLANIR);

	/* Set the current VLAN Hash Table register value */
	FUNC7(pdata);

	if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
		FUNC5(pdata);
	else
		FUNC3(pdata);

	if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC6(pdata);
	else
		FUNC4(pdata);
}
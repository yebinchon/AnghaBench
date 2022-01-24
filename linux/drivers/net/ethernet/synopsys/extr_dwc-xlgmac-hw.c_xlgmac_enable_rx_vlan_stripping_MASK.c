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
struct xlgmac_pdata {scalar_t__ mac_regs; } ;

/* Variables and functions */
 scalar_t__ MAC_VLANTR ; 
 int /*<<< orphan*/  MAC_VLANTR_DOVLTC_LEN ; 
 int /*<<< orphan*/  MAC_VLANTR_DOVLTC_POS ; 
 int /*<<< orphan*/  MAC_VLANTR_ERSVLM_LEN ; 
 int /*<<< orphan*/  MAC_VLANTR_ERSVLM_POS ; 
 int /*<<< orphan*/  MAC_VLANTR_ESVL_LEN ; 
 int /*<<< orphan*/  MAC_VLANTR_ESVL_POS ; 
 int /*<<< orphan*/  MAC_VLANTR_EVLRXS_LEN ; 
 int /*<<< orphan*/  MAC_VLANTR_EVLRXS_POS ; 
 int /*<<< orphan*/  MAC_VLANTR_EVLS_LEN ; 
 int /*<<< orphan*/  MAC_VLANTR_EVLS_POS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct xlgmac_pdata *pdata)
{
	u32 regval;

	regval = FUNC1(pdata->mac_regs + MAC_VLANTR);
	/* Put the VLAN tag in the Rx descriptor */
	regval = FUNC0(regval, MAC_VLANTR_EVLRXS_POS,
				     MAC_VLANTR_EVLRXS_LEN, 1);
	/* Don't check the VLAN type */
	regval = FUNC0(regval, MAC_VLANTR_DOVLTC_POS,
				     MAC_VLANTR_DOVLTC_LEN, 1);
	/* Check only C-TAG (0x8100) packets */
	regval = FUNC0(regval, MAC_VLANTR_ERSVLM_POS,
				     MAC_VLANTR_ERSVLM_LEN, 0);
	/* Don't consider an S-TAG (0x88A8) packet as a VLAN packet */
	regval = FUNC0(regval, MAC_VLANTR_ESVL_POS,
				     MAC_VLANTR_ESVL_LEN, 0);
	/* Enable VLAN tag stripping */
	regval = FUNC0(regval, MAC_VLANTR_EVLS_POS,
				     MAC_VLANTR_EVLS_LEN, 0x3);
	FUNC2(regval, pdata->mac_regs + MAC_VLANTR);

	return 0;
}
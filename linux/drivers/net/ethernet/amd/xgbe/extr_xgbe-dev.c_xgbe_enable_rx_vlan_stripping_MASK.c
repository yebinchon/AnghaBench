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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOVLTC ; 
 int /*<<< orphan*/  ERSVLM ; 
 int /*<<< orphan*/  ESVL ; 
 int /*<<< orphan*/  EVLRXS ; 
 int /*<<< orphan*/  EVLS ; 
 int /*<<< orphan*/  MAC_VLANTR ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct xgbe_prv_data *pdata)
{
	/* Put the VLAN tag in the Rx descriptor */
	FUNC0(pdata, MAC_VLANTR, EVLRXS, 1);

	/* Don't check the VLAN type */
	FUNC0(pdata, MAC_VLANTR, DOVLTC, 1);

	/* Check only C-TAG (0x8100) packets */
	FUNC0(pdata, MAC_VLANTR, ERSVLM, 0);

	/* Don't consider an S-TAG (0x88A8) packet as a VLAN packet */
	FUNC0(pdata, MAC_VLANTR, ESVL, 0);

	/* Enable VLAN tag stripping */
	FUNC0(pdata, MAC_VLANTR, EVLS, 0x3);

	return 0;
}
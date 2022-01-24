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
struct TYPE_2__ {int /*<<< orphan*/  vxn; } ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; TYPE_1__ hw_feat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_PFR ; 
 int /*<<< orphan*/  MAC_TCR ; 
 int /*<<< orphan*/  VNE ; 
 int /*<<< orphan*/  VNM ; 
 int /*<<< orphan*/  VUCC ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	if (!pdata->hw_feat.vxn)
		return;

	/* Program the VXLAN port */
	FUNC2(pdata);

	/* Allow for IPv6/UDP zero-checksum VXLAN packets */
	FUNC0(pdata, MAC_PFR, VUCC, 1);

	/* Enable VXLAN tunneling mode */
	FUNC0(pdata, MAC_TCR, VNM, 0);
	FUNC0(pdata, MAC_TCR, VNE, 1);

	FUNC1(pdata, drv, pdata->netdev, "VXLAN acceleration enabled\n");
}
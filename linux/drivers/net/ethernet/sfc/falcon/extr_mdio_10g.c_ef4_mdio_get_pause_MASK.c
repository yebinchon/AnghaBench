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
struct TYPE_2__ {int mmds; } ;
struct ef4_nic {int wanted_fc; TYPE_1__ mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EF4_FC_AUTO ; 
 int EF4_FC_RX ; 
 int EF4_FC_TX ; 
 int /*<<< orphan*/  MDIO_AN_LPA ; 
 int MDIO_DEVS_AN ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u8 FUNC5(struct ef4_nic *efx)
{
	FUNC0(EF4_FC_AUTO & (EF4_FC_RX | EF4_FC_TX));

	if (!(efx->wanted_fc & EF4_FC_AUTO))
		return efx->wanted_fc;

	FUNC1(!(efx->mdio.mmds & MDIO_DEVS_AN));

	return FUNC4(
		FUNC3(efx->wanted_fc),
		FUNC2(efx, MDIO_MMD_AN, MDIO_AN_LPA));
}
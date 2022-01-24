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
struct ef4_nic {int dummy; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 scalar_t__ EF4_REV_FALCON_B0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRF_BZ_RX_INGR_EN ; 
 int /*<<< orphan*/  FR_AZ_RX_CFG ; 
 scalar_t__ FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 

__attribute__((used)) static void FUNC5(struct ef4_nic *efx)
{
	ef4_oword_t reg;

	if (FUNC1(efx) < EF4_REV_FALCON_B0)
		return;

	/* Isolate the MAC -> RX */
	FUNC2(efx, &reg, FR_AZ_RX_CFG);
	FUNC0(reg, FRF_BZ_RX_INGR_EN, 0);
	FUNC3(efx, &reg, FR_AZ_RX_CFG);

	/* Isolate TX -> MAC */
	FUNC4(efx);
}
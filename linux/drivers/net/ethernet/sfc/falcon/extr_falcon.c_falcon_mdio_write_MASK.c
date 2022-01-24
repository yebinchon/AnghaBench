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
struct net_device {int dummy; } ;
struct falcon_nic_data {int /*<<< orphan*/  mdio_lock; } ;
struct ef4_nic {int /*<<< orphan*/  net_dev; struct falcon_nic_data* nic_data; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AB_MD_DEV_ADR ; 
 int /*<<< orphan*/  FRF_AB_MD_GC ; 
 int /*<<< orphan*/  FRF_AB_MD_PHY_ADR ; 
 int /*<<< orphan*/  FRF_AB_MD_PRT_ADR ; 
 int /*<<< orphan*/  FRF_AB_MD_TXD ; 
 int /*<<< orphan*/  FRF_AB_MD_WRC ; 
 int /*<<< orphan*/  FR_AB_MD_CS ; 
 int /*<<< orphan*/  FR_AB_MD_ID ; 
 int /*<<< orphan*/  FR_AB_MD_PHY_ADR ; 
 int /*<<< orphan*/  FR_AB_MD_TXD ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ef4_nic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct net_device *net_dev,
			     int prtad, int devad, u16 addr, u16 value)
{
	struct ef4_nic *efx = FUNC6(net_dev);
	struct falcon_nic_data *nic_data = efx->nic_data;
	ef4_oword_t reg;
	int rc;

	FUNC7(efx, hw, efx->net_dev,
		   "writing MDIO %d register %d.%d with 0x%04x\n",
		    prtad, devad, addr, value);

	FUNC4(&nic_data->mdio_lock);

	/* Check MDIO not currently being accessed */
	rc = FUNC3(efx);
	if (rc)
		goto out;

	/* Write the address/ID register */
	FUNC0(reg, FRF_AB_MD_PHY_ADR, addr);
	FUNC2(efx, &reg, FR_AB_MD_PHY_ADR);

	FUNC1(reg, FRF_AB_MD_PRT_ADR, prtad,
			     FRF_AB_MD_DEV_ADR, devad);
	FUNC2(efx, &reg, FR_AB_MD_ID);

	/* Write data */
	FUNC0(reg, FRF_AB_MD_TXD, value);
	FUNC2(efx, &reg, FR_AB_MD_TXD);

	FUNC1(reg,
			     FRF_AB_MD_WRC, 1,
			     FRF_AB_MD_GC, 0);
	FUNC2(efx, &reg, FR_AB_MD_CS);

	/* Wait for data to be written */
	rc = FUNC3(efx);
	if (rc) {
		/* Abort the write operation */
		FUNC1(reg,
				     FRF_AB_MD_WRC, 0,
				     FRF_AB_MD_GC, 1);
		FUNC2(efx, &reg, FR_AB_MD_CS);
		FUNC8(10);
	}

out:
	FUNC5(&nic_data->mdio_lock);
	return rc;
}
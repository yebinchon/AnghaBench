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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AB_MD_DEV_ADR ; 
 int /*<<< orphan*/  FRF_AB_MD_GC ; 
 int /*<<< orphan*/  FRF_AB_MD_PHY_ADR ; 
 int /*<<< orphan*/  FRF_AB_MD_PRT_ADR ; 
 int /*<<< orphan*/  FRF_AB_MD_RDC ; 
 int /*<<< orphan*/  FRF_AB_MD_RIC ; 
 int /*<<< orphan*/  FRF_AB_MD_RXD ; 
 int /*<<< orphan*/  FR_AB_MD_CS ; 
 int /*<<< orphan*/  FR_AB_MD_ID ; 
 int /*<<< orphan*/  FR_AB_MD_PHY_ADR ; 
 int /*<<< orphan*/  FR_AB_MD_RXD ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ef4_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ef4_nic* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct net_device *net_dev,
			    int prtad, int devad, u16 addr)
{
	struct ef4_nic *efx = FUNC8(net_dev);
	struct falcon_nic_data *nic_data = efx->nic_data;
	ef4_oword_t reg;
	int rc;

	FUNC6(&nic_data->mdio_lock);

	/* Check MDIO not currently being accessed */
	rc = FUNC5(efx);
	if (rc)
		goto out;

	FUNC1(reg, FRF_AB_MD_PHY_ADR, addr);
	FUNC4(efx, &reg, FR_AB_MD_PHY_ADR);

	FUNC2(reg, FRF_AB_MD_PRT_ADR, prtad,
			     FRF_AB_MD_DEV_ADR, devad);
	FUNC4(efx, &reg, FR_AB_MD_ID);

	/* Request data to be read */
	FUNC2(reg, FRF_AB_MD_RDC, 1, FRF_AB_MD_GC, 0);
	FUNC4(efx, &reg, FR_AB_MD_CS);

	/* Wait for data to become available */
	rc = FUNC5(efx);
	if (rc == 0) {
		FUNC3(efx, &reg, FR_AB_MD_RXD);
		rc = FUNC0(reg, FRF_AB_MD_RXD);
		FUNC10(efx, hw, efx->net_dev,
			   "read from MDIO %d register %d.%d, got %04x\n",
			   prtad, devad, addr, rc);
	} else {
		/* Abort the read operation */
		FUNC2(reg,
				     FRF_AB_MD_RIC, 0,
				     FRF_AB_MD_GC, 1);
		FUNC4(efx, &reg, FR_AB_MD_CS);

		FUNC9(efx, hw, efx->net_dev,
			  "read from MDIO %d register %d.%d, got error %d\n",
			  prtad, devad, addr, rc);
	}

out:
	FUNC7(&nic_data->mdio_lock);
	return rc;
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_phy_db {int /*<<< orphan*/  trans; int /*<<< orphan*/  n_group_txp; int /*<<< orphan*/  n_group_papd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IWL_PHY_DB_CALIB_CHG_PAPD ; 
 int /*<<< orphan*/  IWL_PHY_DB_CALIB_CHG_TXP ; 
 int /*<<< orphan*/  IWL_PHY_DB_CALIB_NCH ; 
 int /*<<< orphan*/  IWL_PHY_DB_CFG ; 
 int FUNC2 (struct iwl_phy_db*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_phy_db*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_phy_db*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct iwl_phy_db *phy_db)
{
	u8 *data = NULL;
	u16 size = 0;
	int err;

	FUNC0(phy_db->trans,
		       "Sending phy db data and configuration to runtime image\n");

	/* Send PHY DB CFG section */
	err = FUNC2(phy_db, IWL_PHY_DB_CFG,
					  &data, &size, 0);
	if (err) {
		FUNC1(phy_db->trans, "Cannot get Phy DB cfg section\n");
		return err;
	}

	err = FUNC4(phy_db, IWL_PHY_DB_CFG, size, data);
	if (err) {
		FUNC1(phy_db->trans,
			"Cannot send HCMD of  Phy DB cfg section\n");
		return err;
	}

	err = FUNC2(phy_db, IWL_PHY_DB_CALIB_NCH,
					  &data, &size, 0);
	if (err) {
		FUNC1(phy_db->trans,
			"Cannot get Phy DB non specific channel section\n");
		return err;
	}

	err = FUNC4(phy_db, IWL_PHY_DB_CALIB_NCH, size, data);
	if (err) {
		FUNC1(phy_db->trans,
			"Cannot send HCMD of Phy DB non specific channel section\n");
		return err;
	}

	/* Send all the TXP channel specific data */
	err = FUNC3(phy_db,
						 IWL_PHY_DB_CALIB_CHG_PAPD,
						 phy_db->n_group_papd);
	if (err) {
		FUNC1(phy_db->trans,
			"Cannot send channel specific PAPD groups\n");
		return err;
	}

	/* Send all the TXP channel specific data */
	err = FUNC3(phy_db,
						 IWL_PHY_DB_CALIB_CHG_TXP,
						 phy_db->n_group_txp);
	if (err) {
		FUNC1(phy_db->trans,
			"Cannot send channel specific TX power groups\n");
		return err;
	}

	FUNC0(phy_db->trans,
		       "Finished sending phy db non channel data\n");
	return 0;
}
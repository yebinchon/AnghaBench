
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_phy_db {int n_group_papd; int n_group_txp; struct iwl_phy_db* calib_ch_group_txp; struct iwl_phy_db* calib_ch_group_papd; } ;


 int IWL_PHY_DB_CALIB_CHG_PAPD ;
 int IWL_PHY_DB_CALIB_CHG_TXP ;
 int IWL_PHY_DB_CALIB_NCH ;
 int IWL_PHY_DB_CFG ;
 int iwl_phy_db_free_section (struct iwl_phy_db*,int ,int) ;
 int kfree (struct iwl_phy_db*) ;

void iwl_phy_db_free(struct iwl_phy_db *phy_db)
{
 int i;

 if (!phy_db)
  return;

 iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CFG, 0);
 iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CALIB_NCH, 0);

 for (i = 0; i < phy_db->n_group_papd; i++)
  iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CALIB_CHG_PAPD, i);
 kfree(phy_db->calib_ch_group_papd);

 for (i = 0; i < phy_db->n_group_txp; i++)
  iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CALIB_CHG_TXP, i);
 kfree(phy_db->calib_ch_group_txp);

 kfree(phy_db);
}

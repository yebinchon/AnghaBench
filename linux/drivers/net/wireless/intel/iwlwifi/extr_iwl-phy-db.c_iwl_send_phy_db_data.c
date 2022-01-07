
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iwl_phy_db {int trans; int n_group_txp; int n_group_papd; } ;


 int IWL_DEBUG_INFO (int ,char*) ;
 int IWL_ERR (int ,char*) ;
 int IWL_PHY_DB_CALIB_CHG_PAPD ;
 int IWL_PHY_DB_CALIB_CHG_TXP ;
 int IWL_PHY_DB_CALIB_NCH ;
 int IWL_PHY_DB_CFG ;
 int iwl_phy_db_get_section_data (struct iwl_phy_db*,int ,int **,int *,int ) ;
 int iwl_phy_db_send_all_channel_groups (struct iwl_phy_db*,int ,int ) ;
 int iwl_send_phy_db_cmd (struct iwl_phy_db*,int ,int ,int *) ;

int iwl_send_phy_db_data(struct iwl_phy_db *phy_db)
{
 u8 *data = ((void*)0);
 u16 size = 0;
 int err;

 IWL_DEBUG_INFO(phy_db->trans,
         "Sending phy db data and configuration to runtime image\n");


 err = iwl_phy_db_get_section_data(phy_db, IWL_PHY_DB_CFG,
       &data, &size, 0);
 if (err) {
  IWL_ERR(phy_db->trans, "Cannot get Phy DB cfg section\n");
  return err;
 }

 err = iwl_send_phy_db_cmd(phy_db, IWL_PHY_DB_CFG, size, data);
 if (err) {
  IWL_ERR(phy_db->trans,
   "Cannot send HCMD of  Phy DB cfg section\n");
  return err;
 }

 err = iwl_phy_db_get_section_data(phy_db, IWL_PHY_DB_CALIB_NCH,
       &data, &size, 0);
 if (err) {
  IWL_ERR(phy_db->trans,
   "Cannot get Phy DB non specific channel section\n");
  return err;
 }

 err = iwl_send_phy_db_cmd(phy_db, IWL_PHY_DB_CALIB_NCH, size, data);
 if (err) {
  IWL_ERR(phy_db->trans,
   "Cannot send HCMD of Phy DB non specific channel section\n");
  return err;
 }


 err = iwl_phy_db_send_all_channel_groups(phy_db,
       IWL_PHY_DB_CALIB_CHG_PAPD,
       phy_db->n_group_papd);
 if (err) {
  IWL_ERR(phy_db->trans,
   "Cannot send channel specific PAPD groups\n");
  return err;
 }


 err = iwl_phy_db_send_all_channel_groups(phy_db,
       IWL_PHY_DB_CALIB_CHG_TXP,
       phy_db->n_group_txp);
 if (err) {
  IWL_ERR(phy_db->trans,
   "Cannot send channel specific TX power groups\n");
  return err;
 }

 IWL_DEBUG_INFO(phy_db->trans,
         "Finished sending phy db non channel data\n");
 return 0;
}

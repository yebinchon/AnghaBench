
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct iwl_phy_db_chg_txp {int max_channel_idx; } ;
struct iwl_phy_db {int n_group_txp; TYPE_1__* calib_ch_group_txp; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ch_id_to_ch_index (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 channel_id_to_txp(struct iwl_phy_db *phy_db, u16 ch_id)
{
 struct iwl_phy_db_chg_txp *txp_chg;
 int i;
 u8 ch_index = ch_id_to_ch_index(ch_id);
 if (ch_index == 0xff)
  return 0xff;

 for (i = 0; i < phy_db->n_group_txp; i++) {
  txp_chg = (void *)phy_db->calib_ch_group_txp[i].data;
  if (!txp_chg)
   return 0xff;




  if (le16_to_cpu(txp_chg->max_channel_idx) >= ch_index)
   return i;
 }
 return 0xff;
}

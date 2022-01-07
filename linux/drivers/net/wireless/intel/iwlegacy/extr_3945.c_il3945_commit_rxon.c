
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il3945_rxon_cmd {int filter_flags; int flags; scalar_t__ reserved5; scalar_t__ reserved4; int bssid_addr; int channel; } ;
struct il_priv {int tx_power_next; struct il3945_rxon_cmd active; int status; int staging; } ;
struct TYPE_2__ {int sw_crypto; } ;


 int C_RXON ;
 int D_INFO (char*,...) ;
 int EINVAL ;
 int EIO ;
 int IL_ERR (char*,...) ;
 int RXON_FILTER_ASSOC_MSK ;
 int RXON_FLG_ANT_SEL_MSK ;
 int RXON_FLG_DIS_DIV_MSK ;
 int RXON_FLG_TSF2HOST_MSK ;
 int S_EXIT_PENDING ;
 int il3945_get_antenna_flags (struct il_priv*) ;
 int il3945_init_hw_rate_table (struct il_priv*) ;
 TYPE_1__ il3945_mod_params ;
 int il_check_rxon_cmd (struct il_priv*) ;
 int il_clear_ucode_stations (struct il_priv*) ;
 int il_full_rxon_required (struct il_priv*) ;
 int il_is_alive (struct il_priv*) ;
 scalar_t__ il_is_associated (struct il_priv*) ;
 int il_restore_stations (struct il_priv*) ;
 int il_send_cmd_pdu (struct il_priv*,int ,int,struct il3945_rxon_cmd*) ;
 int il_send_rxon_assoc (struct il_priv*) ;
 int il_set_rxon_hwcrypto (struct il_priv*,int) ;
 int il_set_tx_power (struct il_priv*,int ,int) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct il3945_rxon_cmd*,struct il3945_rxon_cmd*,int) ;
 scalar_t__ test_bit (int ,int *) ;

int
il3945_commit_rxon(struct il_priv *il)
{

 struct il3945_rxon_cmd *active_rxon = (void *)&il->active;
 struct il3945_rxon_cmd *staging_rxon = (void *)&il->staging;
 int rc = 0;
 bool new_assoc = !!(staging_rxon->filter_flags & RXON_FILTER_ASSOC_MSK);

 if (test_bit(S_EXIT_PENDING, &il->status))
  return -EINVAL;

 if (!il_is_alive(il))
  return -1;


 staging_rxon->flags |= RXON_FLG_TSF2HOST_MSK;


 staging_rxon->flags &= ~(RXON_FLG_DIS_DIV_MSK | RXON_FLG_ANT_SEL_MSK);
 staging_rxon->flags |= il3945_get_antenna_flags(il);

 rc = il_check_rxon_cmd(il);
 if (rc) {
  IL_ERR("Invalid RXON configuration.  Not committing.\n");
  return -EINVAL;
 }




 if (!il_full_rxon_required(il)) {
  rc = il_send_rxon_assoc(il);
  if (rc) {
   IL_ERR("Error setting RXON_ASSOC "
          "configuration (%d).\n", rc);
   return rc;
  }

  memcpy(active_rxon, staging_rxon, sizeof(*active_rxon));




  il_set_tx_power(il, il->tx_power_next, 0);
  return 0;
 }





 if (il_is_associated(il) && new_assoc) {
  D_INFO("Toggling associated bit on current RXON\n");
  active_rxon->filter_flags &= ~RXON_FILTER_ASSOC_MSK;





  active_rxon->reserved4 = 0;
  active_rxon->reserved5 = 0;
  rc = il_send_cmd_pdu(il, C_RXON, sizeof(struct il3945_rxon_cmd),
         &il->active);



  if (rc) {
   active_rxon->filter_flags |= RXON_FILTER_ASSOC_MSK;
   IL_ERR("Error clearing ASSOC_MSK on current "
          "configuration (%d).\n", rc);
   return rc;
  }
  il_clear_ucode_stations(il);
  il_restore_stations(il);
 }

 D_INFO("Sending RXON\n" "* with%s RXON_FILTER_ASSOC_MSK\n"
        "* channel = %d\n" "* bssid = %pM\n", (new_assoc ? "" : "out"),
        le16_to_cpu(staging_rxon->channel), staging_rxon->bssid_addr);





 staging_rxon->reserved4 = 0;
 staging_rxon->reserved5 = 0;

 il_set_rxon_hwcrypto(il, !il3945_mod_params.sw_crypto);


 rc = il_send_cmd_pdu(il, C_RXON, sizeof(struct il3945_rxon_cmd),
        staging_rxon);
 if (rc) {
  IL_ERR("Error setting new configuration (%d).\n", rc);
  return rc;
 }

 memcpy(active_rxon, staging_rxon, sizeof(*active_rxon));

 if (!new_assoc) {
  il_clear_ucode_stations(il);
  il_restore_stations(il);
 }



 rc = il_set_tx_power(il, il->tx_power_next, 1);
 if (rc) {
  IL_ERR("Error setting Tx power (%d).\n", rc);
  return rc;
 }


 rc = il3945_init_hw_rate_table(il);
 if (rc) {
  IL_ERR("Error setting HW rate table: %02X\n", rc);
  return -EIO;
 }

 return 0;
}

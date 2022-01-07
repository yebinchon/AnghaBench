
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_rxon_cmd {int filter_flags; scalar_t__ channel; int bssid_addr; int flags; } ;
struct il_priv {scalar_t__ switch_channel; int tx_power_next; struct il_rxon_cmd staging; scalar_t__ start_calib; TYPE_2__* cfg; int status; int active; } ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int sw_crypto; } ;


 int C_RXON ;
 int D_11H (char*,int ) ;
 int D_INFO (char*,...) ;
 int EBUSY ;
 int EINVAL ;
 int IL_ERR (char*,...) ;
 int RXON_FILTER_ASSOC_MSK ;
 int RXON_FLG_TSF2HOST_MSK ;
 int S_CHANNEL_SWITCH_PENDING ;
 int il4965_init_sensitivity (struct il_priv*) ;
 int il4965_restore_default_wep_keys (struct il_priv*) ;
 int il_check_rxon_cmd (struct il_priv*) ;
 int il_chswitch_done (struct il_priv*,int) ;
 int il_clear_ucode_stations (struct il_priv*) ;
 int il_full_rxon_required (struct il_priv*) ;
 int il_is_alive (struct il_priv*) ;
 scalar_t__ il_is_associated (struct il_priv*) ;
 int il_print_rx_config_cmd (struct il_priv*) ;
 int il_restore_stations (struct il_priv*) ;
 int il_send_cmd_pdu (struct il_priv*,int ,int,struct il_rxon_cmd*) ;
 int il_send_rxon_assoc (struct il_priv*) ;
 int il_set_rxon_hwcrypto (struct il_priv*,int) ;
 int il_set_tx_power (struct il_priv*,int ,int) ;
 int le16_to_cpu (scalar_t__) ;
 int memcpy (struct il_rxon_cmd*,struct il_rxon_cmd*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
il4965_commit_rxon(struct il_priv *il)
{

 struct il_rxon_cmd *active_rxon = (void *)&il->active;
 int ret;
 bool new_assoc = !!(il->staging.filter_flags & RXON_FILTER_ASSOC_MSK);

 if (!il_is_alive(il))
  return -EBUSY;


 il->staging.flags |= RXON_FLG_TSF2HOST_MSK;

 ret = il_check_rxon_cmd(il);
 if (ret) {
  IL_ERR("Invalid RXON configuration.  Not committing.\n");
  return -EINVAL;
 }





 if (test_bit(S_CHANNEL_SWITCH_PENDING, &il->status) &&
     il->switch_channel != il->staging.channel) {
  D_11H("abort channel switch on %d\n",
        le16_to_cpu(il->switch_channel));
  il_chswitch_done(il, 0);
 }




 if (!il_full_rxon_required(il)) {
  ret = il_send_rxon_assoc(il);
  if (ret) {
   IL_ERR("Error setting RXON_ASSOC (%d)\n", ret);
   return ret;
  }

  memcpy(active_rxon, &il->staging, sizeof(*active_rxon));
  il_print_rx_config_cmd(il);




  il_set_tx_power(il, il->tx_power_next, 0);
  return 0;
 }





 if (il_is_associated(il) && new_assoc) {
  D_INFO("Toggling associated bit on current RXON\n");
  active_rxon->filter_flags &= ~RXON_FILTER_ASSOC_MSK;

  ret =
      il_send_cmd_pdu(il, C_RXON,
        sizeof(struct il_rxon_cmd), active_rxon);



  if (ret) {
   active_rxon->filter_flags |= RXON_FILTER_ASSOC_MSK;
   IL_ERR("Error clearing ASSOC_MSK (%d)\n", ret);
   return ret;
  }
  il_clear_ucode_stations(il);
  il_restore_stations(il);
  ret = il4965_restore_default_wep_keys(il);
  if (ret) {
   IL_ERR("Failed to restore WEP keys (%d)\n", ret);
   return ret;
  }
 }

 D_INFO("Sending RXON\n" "* with%s RXON_FILTER_ASSOC_MSK\n"
        "* channel = %d\n" "* bssid = %pM\n", (new_assoc ? "" : "out"),
        le16_to_cpu(il->staging.channel), il->staging.bssid_addr);

 il_set_rxon_hwcrypto(il, !il->cfg->mod_params->sw_crypto);





 if (!new_assoc) {
  ret =
      il_send_cmd_pdu(il, C_RXON,
        sizeof(struct il_rxon_cmd), &il->staging);
  if (ret) {
   IL_ERR("Error setting new RXON (%d)\n", ret);
   return ret;
  }
  D_INFO("Return from !new_assoc RXON.\n");
  memcpy(active_rxon, &il->staging, sizeof(*active_rxon));
  il_clear_ucode_stations(il);
  il_restore_stations(il);
  ret = il4965_restore_default_wep_keys(il);
  if (ret) {
   IL_ERR("Failed to restore WEP keys (%d)\n", ret);
   return ret;
  }
 }
 if (new_assoc) {
  il->start_calib = 0;



  ret =
      il_send_cmd_pdu(il, C_RXON,
        sizeof(struct il_rxon_cmd), &il->staging);
  if (ret) {
   IL_ERR("Error setting new RXON (%d)\n", ret);
   return ret;
  }
  memcpy(active_rxon, &il->staging, sizeof(*active_rxon));
 }
 il_print_rx_config_cmd(il);

 il4965_init_sensitivity(il);



 ret = il_set_tx_power(il, il->tx_power_next, 1);
 if (ret) {
  IL_ERR("Error sending TX power (%d)\n", ret);
  return ret;
 }

 return 0;
}

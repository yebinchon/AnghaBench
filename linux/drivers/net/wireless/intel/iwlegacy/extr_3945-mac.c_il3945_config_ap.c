
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int filter_flags; scalar_t__ assoc_id; } ;
struct il_priv {TYPE_2__ staging; int status; struct ieee80211_vif* vif; } ;
struct TYPE_3__ {scalar_t__ use_short_slot; scalar_t__ use_short_preamble; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int IL_WARN (char*) ;
 int RXON_FILTER_ASSOC_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int RXON_FLG_SHORT_PREAMBLE_MSK ;
 int RXON_FLG_SHORT_SLOT_MSK ;
 int S_EXIT_PENDING ;
 int il3945_commit_rxon (struct il_priv*) ;
 int il3945_send_beacon_cmd (struct il_priv*) ;
 int il_is_associated (struct il_priv*) ;
 int il_send_rxon_timing (struct il_priv*) ;
 scalar_t__ test_bit (int ,int *) ;

void
il3945_config_ap(struct il_priv *il)
{
 struct ieee80211_vif *vif = il->vif;
 int rc = 0;

 if (test_bit(S_EXIT_PENDING, &il->status))
  return;


 if (!(il_is_associated(il))) {


  il->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;
  il3945_commit_rxon(il);


  rc = il_send_rxon_timing(il);
  if (rc)
   IL_WARN("C_RXON_TIMING failed - "
    "Attempting to continue.\n");

  il->staging.assoc_id = 0;

  if (vif->bss_conf.use_short_preamble)
   il->staging.flags |= RXON_FLG_SHORT_PREAMBLE_MSK;
  else
   il->staging.flags &= ~RXON_FLG_SHORT_PREAMBLE_MSK;

  if (il->staging.flags & RXON_FLG_BAND_24G_MSK) {
   if (vif->bss_conf.use_short_slot)
    il->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
   else
    il->staging.flags &= ~RXON_FLG_SHORT_SLOT_MSK;
  }

  il->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
  il3945_commit_rxon(il);
 }
 il3945_send_beacon_cmd(il);
}

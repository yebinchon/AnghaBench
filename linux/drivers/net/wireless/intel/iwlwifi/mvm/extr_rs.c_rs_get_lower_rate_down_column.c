
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rs_rate {size_t index; int ldpc; int sgi; int ant; int type; int bw; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {struct iwl_mvm* drv; } ;
struct iwl_lq_sta {scalar_t__ band; TYPE_1__ pers; } ;


 size_t IWL_RATE_MCS_0_INDEX ;
 size_t IWL_RATE_MCS_9_INDEX ;
 int LQ_HT_SISO ;
 int LQ_LEGACY_A ;
 int LQ_LEGACY_G ;
 int LQ_VHT_SISO ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int RATE_MCS_CHAN_WIDTH_20 ;
 int WARN_ON_ONCE (int) ;
 int first_antenna (int ) ;
 scalar_t__ is_legacy (struct rs_rate*) ;
 scalar_t__ is_siso (struct rs_rate*) ;
 scalar_t__ is_vht_mimo2 (struct rs_rate*) ;
 int iwl_mvm_get_valid_tx_ant (struct iwl_mvm*) ;
 int num_of_ant (int ) ;
 int rs_get_lower_rate_in_column (struct iwl_lq_sta*,struct rs_rate*) ;
 size_t* rs_ht_to_legacy ;
 int rs_rate_supported (struct iwl_lq_sta*,struct rs_rate*) ;

__attribute__((used)) static void rs_get_lower_rate_down_column(struct iwl_lq_sta *lq_sta,
       struct rs_rate *rate)
{
 struct iwl_mvm *mvm = lq_sta->pers.drv;

 if (is_legacy(rate)) {

  return;
 } else if (is_siso(rate)) {

  if (lq_sta->band == NL80211_BAND_5GHZ)
   rate->type = LQ_LEGACY_A;
  else
   rate->type = LQ_LEGACY_G;

  rate->bw = RATE_MCS_CHAN_WIDTH_20;

  WARN_ON_ONCE(rate->index < IWL_RATE_MCS_0_INDEX ||
        rate->index > IWL_RATE_MCS_9_INDEX);

  rate->index = rs_ht_to_legacy[rate->index];
  rate->ldpc = 0;
 } else {

  rate->type = is_vht_mimo2(rate) ?
   LQ_VHT_SISO : LQ_HT_SISO;
 }

 if (num_of_ant(rate->ant) > 1)
  rate->ant = first_antenna(iwl_mvm_get_valid_tx_ant(mvm));


 rate->sgi = 0;

 if (!rs_rate_supported(lq_sta, rate))
  rs_get_lower_rate_in_column(lq_sta, rate);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_config_sta_params_v1 {int p2p; int bssid_index; int sta_index; int supported_rates; int dsss_cck_mode_40mhz; int max_ampdu_duration; int delayed_ba_support; int mimo_ps; int green_field_capable; int max_sp_len; int uapsd; int action; int encrypt_type; int rmf; int sgi_20Mhz; int sgi_40mhz; int max_ampdu_density; int max_ampdu_size; int lsig_txop_protection; int rifs_mode; int tx_channel_width_set; int ht_capable; int wmm_enabled; int listen_interval; int short_preamble_supported; int type; int aid; int mac; int bssid; } ;
struct wcn36xx_hal_config_sta_params {int p2p; int bssid_index; int sta_index; int supported_rates; int dsss_cck_mode_40mhz; int max_ampdu_duration; int delayed_ba_support; int mimo_ps; int green_field_capable; int max_sp_len; int uapsd; int action; int encrypt_type; int rmf; int sgi_20Mhz; int sgi_40mhz; int max_ampdu_density; int max_ampdu_size; int lsig_txop_protection; int rifs_mode; int tx_channel_width_set; int ht_capable; int wmm_enabled; int listen_interval; int short_preamble_supported; int type; int aid; int * mac; int * bssid; } ;
struct wcn36xx {int dummy; } ;


 int ETH_ALEN ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void wcn36xx_smd_convert_sta_to_v1(struct wcn36xx *wcn,
   const struct wcn36xx_hal_config_sta_params *orig,
   struct wcn36xx_hal_config_sta_params_v1 *v1)
{

 memcpy(&v1->bssid, orig->bssid, ETH_ALEN);
 memcpy(&v1->mac, orig->mac, ETH_ALEN);
 v1->aid = orig->aid;
 v1->type = orig->type;
 v1->short_preamble_supported = orig->short_preamble_supported;
 v1->listen_interval = orig->listen_interval;
 v1->wmm_enabled = orig->wmm_enabled;
 v1->ht_capable = orig->ht_capable;
 v1->tx_channel_width_set = orig->tx_channel_width_set;
 v1->rifs_mode = orig->rifs_mode;
 v1->lsig_txop_protection = orig->lsig_txop_protection;
 v1->max_ampdu_size = orig->max_ampdu_size;
 v1->max_ampdu_density = orig->max_ampdu_density;
 v1->sgi_40mhz = orig->sgi_40mhz;
 v1->sgi_20Mhz = orig->sgi_20Mhz;
 v1->rmf = orig->rmf;
 v1->encrypt_type = orig->encrypt_type;
 v1->action = orig->action;
 v1->uapsd = orig->uapsd;
 v1->max_sp_len = orig->max_sp_len;
 v1->green_field_capable = orig->green_field_capable;
 v1->mimo_ps = orig->mimo_ps;
 v1->delayed_ba_support = orig->delayed_ba_support;
 v1->max_ampdu_duration = orig->max_ampdu_duration;
 v1->dsss_cck_mode_40mhz = orig->dsss_cck_mode_40mhz;
 memcpy(&v1->supported_rates, &orig->supported_rates,
        sizeof(orig->supported_rates));
 v1->sta_index = orig->sta_index;
 v1->bssid_index = orig->bssid_index;
 v1->p2p = orig->p2p;
}

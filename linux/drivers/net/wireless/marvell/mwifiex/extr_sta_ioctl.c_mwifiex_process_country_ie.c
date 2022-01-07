
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct mwifiex_802_11d_domain_reg {int* country_code; int no_of_triplet; scalar_t__ triplet; } ;
struct ieee80211_country_ie_triplet {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_2__ {int* country_code; struct mwifiex_802_11d_domain_reg domain_reg; } ;


 int ERROR ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11D_DOMAIN_INFO ;
 int IEEE80211_COUNTRY_IE_MIN_LEN ;
 int IEEE80211_COUNTRY_STRING_LEN ;
 int INFO ;
 int WLAN_EID_COUNTRY ;
 int* ieee80211_bss_get_ie (struct cfg80211_bss*,int ) ;
 int memcpy (int*,int const*,int) ;
 int mwifiex_dbg (TYPE_1__*,int ,char*) ;
 int mwifiex_dnld_txpwr_table (struct mwifiex_private*) ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int strncmp (int*,int const*,int) ;

__attribute__((used)) static int mwifiex_process_country_ie(struct mwifiex_private *priv,
          struct cfg80211_bss *bss)
{
 const u8 *country_ie;
 u8 country_ie_len;
 struct mwifiex_802_11d_domain_reg *domain_info =
     &priv->adapter->domain_reg;

 rcu_read_lock();
 country_ie = ieee80211_bss_get_ie(bss, WLAN_EID_COUNTRY);
 if (!country_ie) {
  rcu_read_unlock();
  return 0;
 }

 country_ie_len = country_ie[1];
 if (country_ie_len < IEEE80211_COUNTRY_IE_MIN_LEN) {
  rcu_read_unlock();
  return 0;
 }

 if (!strncmp(priv->adapter->country_code, &country_ie[2], 2)) {
  rcu_read_unlock();
  mwifiex_dbg(priv->adapter, INFO,
       "11D: skip setting domain info in FW\n");
  return 0;
 }
 memcpy(priv->adapter->country_code, &country_ie[2], 2);

 domain_info->country_code[0] = country_ie[2];
 domain_info->country_code[1] = country_ie[3];
 domain_info->country_code[2] = ' ';

 country_ie_len -= IEEE80211_COUNTRY_STRING_LEN;

 domain_info->no_of_triplet =
  country_ie_len / sizeof(struct ieee80211_country_ie_triplet);

 memcpy((u8 *)domain_info->triplet,
        &country_ie[2] + IEEE80211_COUNTRY_STRING_LEN, country_ie_len);

 rcu_read_unlock();

 if (mwifiex_send_cmd(priv, HostCmd_CMD_802_11D_DOMAIN_INFO,
        HostCmd_ACT_GEN_SET, 0, ((void*)0), 0)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "11D: setting domain info in FW fail\n");
  return -1;
 }

 mwifiex_dnld_txpwr_table(priv);

 return 0;
}

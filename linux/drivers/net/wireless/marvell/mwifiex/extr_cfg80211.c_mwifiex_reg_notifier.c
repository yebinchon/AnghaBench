
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {int initiator; int * alpha2; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {char* country_code; } ;


 int ERROR ;
 int INFO ;
 int MWIFIEX_BSS_ROLE_ANY ;




 int memcpy (char*,int *,int) ;
 struct mwifiex_adapter* mwifiex_cfg80211_get_adapter (struct wiphy*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int,...) ;
 int mwifiex_dnld_txpwr_table (struct mwifiex_private*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_reg_apply_radar_flags (struct wiphy*) ;
 int mwifiex_send_domain_info_cmd_fw (struct wiphy*) ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static void mwifiex_reg_notifier(struct wiphy *wiphy,
     struct regulatory_request *request)
{
 struct mwifiex_adapter *adapter = mwifiex_cfg80211_get_adapter(wiphy);
 struct mwifiex_private *priv = mwifiex_get_priv(adapter,
       MWIFIEX_BSS_ROLE_ANY);
 mwifiex_dbg(adapter, INFO,
      "info: cfg80211 regulatory domain callback for %c%c\n",
      request->alpha2[0], request->alpha2[1]);
 mwifiex_reg_apply_radar_flags(wiphy);

 switch (request->initiator) {
 case 129:
 case 131:
 case 128:
 case 130:
  break;
 default:
  mwifiex_dbg(adapter, ERROR,
       "unknown regdom initiator: %d\n",
       request->initiator);
  return;
 }


 if (strncmp(request->alpha2, "00", 2) &&
     strncmp(request->alpha2, adapter->country_code,
      sizeof(request->alpha2))) {
  memcpy(adapter->country_code, request->alpha2,
         sizeof(request->alpha2));
  mwifiex_send_domain_info_cmd_fw(wiphy);
  mwifiex_dnld_txpwr_table(priv);
 }
}

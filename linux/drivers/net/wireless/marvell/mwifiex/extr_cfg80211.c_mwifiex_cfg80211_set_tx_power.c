
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_power_cfg {int is_power_auto; int is_power_fixed; int power_level; } ;
struct mwifiex_adapter {int dummy; } ;
typedef enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;


 int MBM_TO_DBM (int) ;
 int MWIFIEX_BSS_ROLE_ANY ;



 struct mwifiex_adapter* mwifiex_cfg80211_get_adapter (struct wiphy*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_set_tx_power (struct mwifiex_private*,struct mwifiex_power_cfg*) ;

__attribute__((used)) static int
mwifiex_cfg80211_set_tx_power(struct wiphy *wiphy,
         struct wireless_dev *wdev,
         enum nl80211_tx_power_setting type,
         int mbm)
{
 struct mwifiex_adapter *adapter = mwifiex_cfg80211_get_adapter(wiphy);
 struct mwifiex_private *priv;
 struct mwifiex_power_cfg power_cfg;
 int dbm = MBM_TO_DBM(mbm);

 switch (type) {
 case 129:
  power_cfg.is_power_auto = 0;
  power_cfg.is_power_fixed = 1;
  power_cfg.power_level = dbm;
  break;
 case 128:
  power_cfg.is_power_auto = 0;
  power_cfg.is_power_fixed = 0;
  power_cfg.power_level = dbm;
  break;
 case 130:
  power_cfg.is_power_auto = 1;
  break;
 }

 priv = mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_ANY);

 return mwifiex_set_tx_power(priv, &power_cfg);
}

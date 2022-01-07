
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_priv {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
il3945_set_wep_dynamic_key_info(struct il_priv *il,
    struct ieee80211_key_conf *keyconf, u8 sta_id)
{
 return -EOPNOTSUPP;
}

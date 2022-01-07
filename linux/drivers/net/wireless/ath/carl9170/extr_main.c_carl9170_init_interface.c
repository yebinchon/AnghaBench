
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ type; int p2p; int addr; } ;
struct ath_common {int macaddr; } ;
struct ar9170 {int disable_offload; int rx_software_decryption; struct ath_common common; } ;


 int ETH_ALEN ;
 int IS_STARTED (struct ar9170*) ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WARN_ON_ONCE (int ) ;
 int carl9170_set_operating_mode (struct ar9170*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int carl9170_init_interface(struct ar9170 *ar,
       struct ieee80211_vif *vif)
{
 struct ath_common *common = &ar->common;
 int err;

 if (!vif) {
  WARN_ON_ONCE(IS_STARTED(ar));
  return 0;
 }

 memcpy(common->macaddr, vif->addr, ETH_ALEN);
 ar->disable_offload |= ((vif->type != NL80211_IFTYPE_STATION) &&
     (vif->type != NL80211_IFTYPE_AP));







 ar->disable_offload |= vif->p2p;

 ar->rx_software_decryption = ar->disable_offload;

 err = carl9170_set_operating_mode(ar);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hdr {int frame_control; } ;
struct TYPE_2__ {scalar_t__ sw_decrypt_mcast_mgmt; } ;
struct ath10k {TYPE_1__ hw_params; } ;


 int ieee80211_get_DA (struct ieee80211_hdr*) ;
 int ieee80211_has_protected (int ) ;
 scalar_t__ ieee80211_is_auth (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

__attribute__((used)) static bool ath10k_wmi_rx_is_decrypted(struct ath10k *ar,
           struct ieee80211_hdr *hdr)
{
 if (!ieee80211_has_protected(hdr->frame_control))
  return 0;





 if (ieee80211_is_auth(hdr->frame_control))
  return 0;




 if (is_multicast_ether_addr(ieee80211_get_DA(hdr)) &&
     ar->hw_params.sw_decrypt_mcast_mgmt)
  return 0;

 return 1;
}

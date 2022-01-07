
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hdr {int addr3; int frame_control; } ;
struct ath_common {int curbssid; } ;


 scalar_t__ ether_addr_equal_64bits (int ,int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 int is_zero_ether_addr (int ) ;

bool ath_is_mybeacon(struct ath_common *common, struct ieee80211_hdr *hdr)
{
 return ieee80211_is_beacon(hdr->frame_control) &&
  !is_zero_ether_addr(common->curbssid) &&
  ether_addr_equal_64bits(hdr->addr3, common->curbssid);
}

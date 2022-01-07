
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int iw_mode; int bssid; } ;
struct ieee80211_hdr {int addr2; int addr3; } ;




 int ether_addr_equal_64bits (int ,int ) ;

__attribute__((used)) static int
il3945_is_network_packet(struct il_priv *il, struct ieee80211_hdr *header)
{


 switch (il->iw_mode) {
 case 129:

  return ether_addr_equal_64bits(header->addr3, il->bssid);
 case 128:

  return ether_addr_equal_64bits(header->addr2, il->bssid);
 default:
  return 1;
 }
}

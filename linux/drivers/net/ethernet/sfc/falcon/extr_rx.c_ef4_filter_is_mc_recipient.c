
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ef4_filter_spec {int flags; scalar_t__ dmaq_id; int match_flags; scalar_t__ ether_type; int * loc_host; int loc_mac; } ;


 int EF4_FILTER_FLAG_RX ;
 int EF4_FILTER_MATCH_ETHER_TYPE ;
 int EF4_FILTER_MATCH_LOC_HOST ;
 int EF4_FILTER_MATCH_LOC_MAC ;
 int EF4_FILTER_MATCH_LOC_MAC_IG ;
 scalar_t__ EF4_FILTER_RX_DMAQ_ID_DROP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

bool ef4_filter_is_mc_recipient(const struct ef4_filter_spec *spec)
{
 if (!(spec->flags & EF4_FILTER_FLAG_RX) ||
     spec->dmaq_id == EF4_FILTER_RX_DMAQ_ID_DROP)
  return 0;

 if (spec->match_flags &
     (EF4_FILTER_MATCH_LOC_MAC | EF4_FILTER_MATCH_LOC_MAC_IG) &&
     is_multicast_ether_addr(spec->loc_mac))
  return 1;

 if ((spec->match_flags &
      (EF4_FILTER_MATCH_ETHER_TYPE | EF4_FILTER_MATCH_LOC_HOST)) ==
     (EF4_FILTER_MATCH_ETHER_TYPE | EF4_FILTER_MATCH_LOC_HOST)) {
  if (spec->ether_type == htons(ETH_P_IP) &&
      ipv4_is_multicast(spec->loc_host[0]))
   return 1;
  if (spec->ether_type == htons(ETH_P_IPV6) &&
      ((const u8 *)spec->loc_host)[0] == 0xff)
   return 1;
 }

 return 0;
}

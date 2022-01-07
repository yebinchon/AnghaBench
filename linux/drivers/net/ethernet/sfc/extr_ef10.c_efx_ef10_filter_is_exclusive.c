
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_filter_spec {int match_flags; scalar_t__ ether_type; int * loc_host; int loc_mac; } ;


 int EFX_FILTER_MATCH_ETHER_TYPE ;
 int EFX_FILTER_MATCH_LOC_HOST ;
 int EFX_FILTER_MATCH_LOC_MAC ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ htons (int ) ;
 int ipv4_is_multicast (int ) ;
 int is_multicast_ether_addr (int ) ;

__attribute__((used)) static bool efx_ef10_filter_is_exclusive(const struct efx_filter_spec *spec)
{
 if (spec->match_flags & EFX_FILTER_MATCH_LOC_MAC &&
     !is_multicast_ether_addr(spec->loc_mac))
  return 1;

 if ((spec->match_flags &
      (EFX_FILTER_MATCH_ETHER_TYPE | EFX_FILTER_MATCH_LOC_HOST)) ==
     (EFX_FILTER_MATCH_ETHER_TYPE | EFX_FILTER_MATCH_LOC_HOST)) {
  if (spec->ether_type == htons(ETH_P_IP) &&
      !ipv4_is_multicast(spec->loc_host[0]))
   return 1;
  if (spec->ether_type == htons(ETH_P_IPV6) &&
      ((const u8 *)spec->loc_host)[0] != 0xff)
   return 1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct efx_filter_spec {int loc_mac; int match_flags; int outer_vid; } ;


 int EFX_FILTER_MATCH_LOC_MAC ;
 int EFX_FILTER_MATCH_OUTER_VID ;
 scalar_t__ EFX_FILTER_VID_UNSPEC ;
 int EINVAL ;
 int ether_addr_copy (int ,int const*) ;
 int htons (scalar_t__) ;

__attribute__((used)) static inline int efx_filter_set_eth_local(struct efx_filter_spec *spec,
        u16 vid, const u8 *addr)
{
 if (vid == EFX_FILTER_VID_UNSPEC && addr == ((void*)0))
  return -EINVAL;

 if (vid != EFX_FILTER_VID_UNSPEC) {
  spec->match_flags |= EFX_FILTER_MATCH_OUTER_VID;
  spec->outer_vid = htons(vid);
 }
 if (addr != ((void*)0)) {
  spec->match_flags |= EFX_FILTER_MATCH_LOC_MAC;
  ether_addr_copy(spec->loc_mac, addr);
 }
 return 0;
}

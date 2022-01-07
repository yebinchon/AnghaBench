
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int* loc_mac; int match_flags; } ;


 int EFX_FILTER_MATCH_LOC_MAC_IG ;

__attribute__((used)) static inline int efx_filter_set_mc_def(struct efx_filter_spec *spec)
{
 spec->match_flags |= EFX_FILTER_MATCH_LOC_MAC_IG;
 spec->loc_mac[0] = 1;
 return 0;
}

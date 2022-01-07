
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_filter_spec {int match_flags; } ;


 int EFX_FILTER_MATCH_LOC_MAC_IG ;

__attribute__((used)) static inline int efx_filter_set_uc_def(struct efx_filter_spec *spec)
{
 spec->match_flags |= EFX_FILTER_MATCH_LOC_MAC_IG;
 return 0;
}

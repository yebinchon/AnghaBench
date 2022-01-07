
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct efx_farch_filter_spec {size_t type; int flags; } ;


 unsigned int EFX_FARCH_FILTER_INDEX_WIDTH ;
 scalar_t__ EFX_FARCH_FILTER_MATCH_PRI_COUNT ;
 int EFX_FILTER_FLAG_RX ;
 unsigned int* efx_farch_filter_type_match_pri ;

__attribute__((used)) static inline u32
efx_farch_filter_make_id(const struct efx_farch_filter_spec *spec,
    unsigned int index)
{
 unsigned int range;

 range = efx_farch_filter_type_match_pri[spec->type];
 if (!(spec->flags & EFX_FILTER_FLAG_RX))
  range += EFX_FARCH_FILTER_MATCH_PRI_COUNT;

 return range << EFX_FARCH_FILTER_INDEX_WIDTH | index;
}

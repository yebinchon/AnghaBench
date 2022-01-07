
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ef4_farch_filter_spec {size_t type; int flags; } ;


 unsigned int EF4_FARCH_FILTER_INDEX_WIDTH ;
 scalar_t__ EF4_FARCH_FILTER_MATCH_PRI_COUNT ;
 int EF4_FILTER_FLAG_RX ;
 unsigned int* ef4_farch_filter_type_match_pri ;

__attribute__((used)) static inline u32
ef4_farch_filter_make_id(const struct ef4_farch_filter_spec *spec,
    unsigned int index)
{
 unsigned int range;

 range = ef4_farch_filter_type_match_pri[spec->type];
 if (!(spec->flags & EF4_FILTER_FLAG_RX))
  range += EF4_FARCH_FILTER_MATCH_PRI_COUNT;

 return range << EF4_FARCH_FILTER_INDEX_WIDTH | index;
}

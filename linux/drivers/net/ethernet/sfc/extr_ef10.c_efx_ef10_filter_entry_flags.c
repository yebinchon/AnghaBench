
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_ef10_filter_table {TYPE_1__* entry; } ;
struct TYPE_2__ {unsigned int spec; } ;


 unsigned int EFX_EF10_FILTER_FLAGS ;

__attribute__((used)) static unsigned int
efx_ef10_filter_entry_flags(const struct efx_ef10_filter_table *table,
      unsigned int filter_idx)
{
 return table->entry[filter_idx].spec & EFX_EF10_FILTER_FLAGS;
}

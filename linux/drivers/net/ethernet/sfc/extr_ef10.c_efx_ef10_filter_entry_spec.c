
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_filter_spec {int dummy; } ;
struct efx_ef10_filter_table {TYPE_1__* entry; } ;
struct TYPE_2__ {int spec; } ;


 int EFX_EF10_FILTER_FLAGS ;

__attribute__((used)) static struct efx_filter_spec *
efx_ef10_filter_entry_spec(const struct efx_ef10_filter_table *table,
      unsigned int filter_idx)
{
 return (struct efx_filter_spec *)(table->entry[filter_idx].spec &
       ~EFX_EF10_FILTER_FLAGS);
}

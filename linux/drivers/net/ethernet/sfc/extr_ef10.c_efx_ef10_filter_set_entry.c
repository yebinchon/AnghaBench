
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_filter_spec {int dummy; } ;
struct efx_ef10_filter_table {TYPE_1__* entry; } ;
struct TYPE_2__ {unsigned long spec; } ;



__attribute__((used)) static void
efx_ef10_filter_set_entry(struct efx_ef10_filter_table *table,
     unsigned int filter_idx,
     const struct efx_filter_spec *spec,
     unsigned int flags)
{
 table->entry[filter_idx].spec = (unsigned long)spec | flags;
}

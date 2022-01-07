
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_ef10_filter_table {unsigned int rx_match_count; int * rx_match_mcdi_flags; } ;
typedef enum efx_filter_match_flags { ____Placeholder_efx_filter_match_flags } efx_filter_match_flags ;


 int efx_ef10_filter_match_flags_from_mcdi (int,int ) ;

__attribute__((used)) static bool efx_ef10_filter_match_supported(struct efx_ef10_filter_table *table,
         bool encap,
         enum efx_filter_match_flags match_flags)
{
 unsigned int match_pri;
 int mf;

 for (match_pri = 0;
      match_pri < table->rx_match_count;
      match_pri++) {
  mf = efx_ef10_filter_match_flags_from_mcdi(encap,
    table->rx_match_mcdi_flags[match_pri]);
  if (mf == match_flags)
   return 1;
 }

 return 0;
}

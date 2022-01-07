
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;


 unsigned int ARRAY_SIZE (int*) ;
 unsigned int EFX_FARCH_FILTER_INDEX_WIDTH ;
 int EFX_FARCH_FILTER_TABLE_COUNT ;
 int* efx_farch_filter_range_table ;

__attribute__((used)) static inline enum efx_farch_filter_table_id
efx_farch_filter_id_table_id(u32 id)
{
 unsigned int range = id >> EFX_FARCH_FILTER_INDEX_WIDTH;

 if (range < ARRAY_SIZE(efx_farch_filter_range_table))
  return efx_farch_filter_range_table[range];
 else
  return EFX_FARCH_FILTER_TABLE_COUNT;
}

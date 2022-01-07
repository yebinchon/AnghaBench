
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;


 unsigned int ARRAY_SIZE (int*) ;
 unsigned int EF4_FARCH_FILTER_INDEX_WIDTH ;
 int EF4_FARCH_FILTER_TABLE_COUNT ;
 int* ef4_farch_filter_range_table ;

__attribute__((used)) static inline enum ef4_farch_filter_table_id
ef4_farch_filter_id_table_id(u32 id)
{
 unsigned int range = id >> EF4_FARCH_FILTER_INDEX_WIDTH;

 if (range < ARRAY_SIZE(ef4_farch_filter_range_table))
  return ef4_farch_filter_range_table[range];
 else
  return EF4_FARCH_FILTER_TABLE_COUNT;
}

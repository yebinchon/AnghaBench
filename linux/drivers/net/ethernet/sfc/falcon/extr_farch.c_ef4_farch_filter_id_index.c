
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int EF4_FARCH_FILTER_INDEX_MASK ;

__attribute__((used)) static inline unsigned int ef4_farch_filter_id_index(u32 id)
{
 return id & EF4_FARCH_FILTER_INDEX_MASK;
}

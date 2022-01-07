
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_swapi_table_info {void* avail; void* used; } ;
struct fm10k_global_table_data {int avail; int used; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static void fm10k_record_global_table_data(struct fm10k_global_table_data *from,
        struct fm10k_swapi_table_info *to)
{

 to->used = le32_to_cpu(from->used);
 to->avail = le32_to_cpu(from->avail);
}

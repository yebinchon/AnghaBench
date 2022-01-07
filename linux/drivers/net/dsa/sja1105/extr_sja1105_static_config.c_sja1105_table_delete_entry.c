
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sja1105_table {int entry_count; int * entries; TYPE_1__* ops; } ;
struct TYPE_2__ {size_t unpacked_entry_size; } ;


 int ERANGE ;
 int memmove (int *,int *,int) ;

int sja1105_table_delete_entry(struct sja1105_table *table, int i)
{
 size_t entry_size = table->ops->unpacked_entry_size;
 u8 *entries = table->entries;

 if (i > table->entry_count)
  return -ERANGE;

 memmove(entries + i * entry_size, entries + (i + 1) * entry_size,
  (table->entry_count - i) * entry_size);

 table->entry_count--;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_table_header {int crc; int len; int block_id; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_TABLE_HEADER ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

size_t sja1105_table_header_packing(void *buf, void *entry_ptr,
        enum packing_op op)
{
 const size_t size = SJA1105_SIZE_TABLE_HEADER;
 struct sja1105_table_header *entry = entry_ptr;

 sja1105_packing(buf, &entry->block_id, 31, 24, size, op);
 sja1105_packing(buf, &entry->len, 55, 32, size, op);
 sja1105_packing(buf, &entry->crc, 95, 64, size, op);
 return size;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sja1105_table_header {int len; int crc; scalar_t__ block_id; int member_0; } ;
struct sja1105_table {int entry_count; TYPE_1__* ops; int * entries; } ;
struct sja1105_static_config {struct sja1105_table* tables; int device_id; } ;
typedef enum sja1105_blk_idx { ____Placeholder_sja1105_blk_idx } sja1105_blk_idx ;
struct TYPE_2__ {int packed_entry_size; int unpacked_entry_size; int (* packing ) (char*,int *,int ) ;} ;


 int BLK_IDX_MAX ;
 int PACK ;
 int SJA1105_SIZE_DEVICE_ID ;
 int SJA1105_SIZE_TABLE_HEADER ;
 scalar_t__* blk_id_map ;
 int memset (char*,int ,int) ;
 int sja1105_pack (char*,int *,int,int ,int) ;
 int sja1105_table_header_pack_with_crc (char*,struct sja1105_table_header*) ;
 int sja1105_table_header_packing (char*,struct sja1105_table_header*,int ) ;
 int sja1105_table_write_crc (char*,char*) ;
 int stub1 (char*,int *,int ) ;

void
sja1105_static_config_pack(void *buf, struct sja1105_static_config *config)
{
 struct sja1105_table_header header = {0};
 enum sja1105_blk_idx i;
 char *p = buf;
 int j;

 sja1105_pack(p, &config->device_id, 31, 0, 4);
 p += SJA1105_SIZE_DEVICE_ID;

 for (i = 0; i < BLK_IDX_MAX; i++) {
  const struct sja1105_table *table;
  char *table_start;

  table = &config->tables[i];
  if (!table->entry_count)
   continue;

  header.block_id = blk_id_map[i];
  header.len = table->entry_count *
        table->ops->packed_entry_size / 4;
  sja1105_table_header_pack_with_crc(p, &header);
  p += SJA1105_SIZE_TABLE_HEADER;
  table_start = p;
  for (j = 0; j < table->entry_count; j++) {
   u8 *entry_ptr = table->entries;

   entry_ptr += j * table->ops->unpacked_entry_size;
   memset(p, 0, table->ops->packed_entry_size);
   table->ops->packing(p, entry_ptr, PACK);
   p += table->ops->packed_entry_size;
  }
  sja1105_table_write_crc(table_start, p);
  p += 4;
 }





 header.block_id = 0;
 header.len = 0;
 header.crc = 0xDEADBEEF;
 memset(p, 0, SJA1105_SIZE_TABLE_HEADER);
 sja1105_table_header_packing(p, &header, PACK);
}

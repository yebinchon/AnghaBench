
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_table_header {int crc; } ;


 int PACK ;
 int SJA1105_SIZE_TABLE_HEADER ;
 int memset (void*,int ,int) ;
 int sja1105_crc32 (void*,int) ;
 int sja1105_pack (void*,int *,int,int ,int) ;
 int sja1105_table_header_packing (void*,struct sja1105_table_header*,int ) ;

void
sja1105_table_header_pack_with_crc(void *buf, struct sja1105_table_header *hdr)
{



 memset(buf, 0, SJA1105_SIZE_TABLE_HEADER);
 sja1105_table_header_packing(buf, hdr, PACK);
 hdr->crc = sja1105_crc32(buf, SJA1105_SIZE_TABLE_HEADER - 4);
 sja1105_pack(buf + SJA1105_SIZE_TABLE_HEADER - 4, &hdr->crc, 31, 0, 4);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cudbg_entity_hdr {int start_offset; int num_pad; int size; } ;
struct cudbg_buffer {int offset; scalar_t__ data; } ;


 int memcpy (int*,int**,int) ;

void cudbg_align_debug_buffer(struct cudbg_buffer *dbg_buff,
         struct cudbg_entity_hdr *entity_hdr)
{
 u8 zero_buf[4] = {0};
 u8 padding, remain;

 remain = (dbg_buff->offset - entity_hdr->start_offset) % 4;
 padding = 4 - remain;
 if (remain) {
  memcpy(((u8 *)dbg_buff->data) + dbg_buff->offset, &zero_buf,
         padding);
  dbg_buff->offset += padding;
  entity_hdr->num_pad = padding;
 }
 entity_hdr->size = dbg_buff->offset - entity_hdr->start_offset;
}

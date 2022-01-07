
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cudbg_init {scalar_t__ compress_type; scalar_t__ compress_buff_size; scalar_t__ compress_buff; } ;
struct cudbg_buffer {scalar_t__ offset; scalar_t__ size; char* data; } ;


 scalar_t__ CUDBG_COMPRESSION_NONE ;
 int CUDBG_STATUS_NO_MEM ;

int cudbg_get_buff(struct cudbg_init *pdbg_init,
     struct cudbg_buffer *pdbg_buff, u32 size,
     struct cudbg_buffer *pin_buff)
{
 u32 offset;

 offset = pdbg_buff->offset;
 if (offset + size > pdbg_buff->size)
  return CUDBG_STATUS_NO_MEM;

 if (pdbg_init->compress_type != CUDBG_COMPRESSION_NONE) {
  if (size > pdbg_init->compress_buff_size)
   return CUDBG_STATUS_NO_MEM;

  pin_buff->data = (char *)pdbg_init->compress_buff;
  pin_buff->offset = 0;
  pin_buff->size = size;
  return 0;
 }

 pin_buff->data = (char *)pdbg_buff->data + offset;
 pin_buff->offset = offset;
 pin_buff->size = size;
 return 0;
}

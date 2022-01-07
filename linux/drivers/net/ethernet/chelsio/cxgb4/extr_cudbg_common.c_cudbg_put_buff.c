
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_init {scalar_t__ compress_type; int compress_buff_size; int compress_buff; } ;
struct cudbg_buffer {scalar_t__ size; scalar_t__ offset; int * data; } ;


 scalar_t__ CUDBG_COMPRESSION_NONE ;
 int memset (int ,int ,int ) ;

void cudbg_put_buff(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *pin_buff)
{

 if (pdbg_init->compress_type != CUDBG_COMPRESSION_NONE)
  memset(pdbg_init->compress_buff, 0,
         pdbg_init->compress_buff_size);

 pin_buff->data = ((void*)0);
 pin_buff->offset = 0;
 pin_buff->size = 0;
}

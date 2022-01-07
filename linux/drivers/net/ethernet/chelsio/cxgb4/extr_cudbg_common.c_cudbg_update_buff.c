
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_buffer {scalar_t__ size; int offset; } ;



void cudbg_update_buff(struct cudbg_buffer *pin_buff,
         struct cudbg_buffer *pout_buff)
{



 pout_buff->offset += pin_buff->size;
}

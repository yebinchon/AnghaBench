
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct scif_rb {int size; void** read_ptr; void** write_ptr; void* current_write_offset; void* current_read_offset; void* rb_base; } ;



void scif_rb_init(struct scif_rb *rb, u32 *read_ptr, u32 *write_ptr,
    void *rb_base, u8 size)
{
 rb->rb_base = rb_base;
 rb->size = (1 << size);
 rb->read_ptr = read_ptr;
 rb->write_ptr = write_ptr;
 rb->current_read_offset = *read_ptr;
 rb->current_write_offset = *write_ptr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scif_rb {int size; int current_read_offset; int current_write_offset; int * read_ptr; } ;


 int mb () ;
 int scif_rb_ring_space (int ,int ,int ) ;

u32 scif_rb_space(struct scif_rb *rb)
{
 rb->current_read_offset = *rb->read_ptr;





 mb();
 return scif_rb_ring_space(rb->current_write_offset,
      rb->current_read_offset, rb->size);
}

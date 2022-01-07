
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scif_rb {int size; int current_read_offset; int current_write_offset; int * write_ptr; } ;


 scalar_t__ scif_rb_ring_cnt (int ,int ,int ) ;
 int smp_rmb () ;

u32 scif_rb_count(struct scif_rb *rb, u32 size)
{
 if (scif_rb_ring_cnt(rb->current_write_offset,
        rb->current_read_offset,
        rb->size) < size) {
  rb->current_write_offset = *rb->write_ptr;





  smp_rmb();
 }
 return scif_rb_ring_cnt(rb->current_write_offset,
    rb->current_read_offset,
    rb->size);
}

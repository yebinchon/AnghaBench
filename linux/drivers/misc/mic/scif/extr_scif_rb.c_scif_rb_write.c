
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scif_rb {int current_write_offset; int size; void* rb_base; } ;


 int ENOMEM ;
 int memcpy_torb (struct scif_rb*,void*,void*,int) ;
 int scif_rb_space (struct scif_rb*) ;

int scif_rb_write(struct scif_rb *rb, void *msg, u32 size)
{
 void *header;

 if (scif_rb_space(rb) < size)
  return -ENOMEM;
 header = rb->rb_base + rb->current_write_offset;
 memcpy_torb(rb, header, msg, size);




 rb->current_write_offset =
  (rb->current_write_offset + size) & (rb->size - 1);
 return 0;
}

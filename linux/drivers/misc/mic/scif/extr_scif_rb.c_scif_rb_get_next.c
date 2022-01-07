
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scif_rb {int current_read_offset; int size; } ;


 int memcpy_fromrb (struct scif_rb*,void*,void*,int) ;
 void* scif_rb_get (struct scif_rb*,int) ;

u32 scif_rb_get_next(struct scif_rb *rb, void *msg, u32 size)
{
 void *header = ((void*)0);
 int read_size = 0;

 header = scif_rb_get(rb, size);
 if (header) {
  u32 next_cmd_offset =
   (rb->current_read_offset + size) & (rb->size - 1);

  read_size = size;
  rb->current_read_offset = next_cmd_offset;
  memcpy_fromrb(rb, header, msg, size);
 }
 return read_size;
}

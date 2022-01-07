
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scif_rb {int current_read_offset; void* rb_base; } ;


 scalar_t__ scif_rb_count (struct scif_rb*,scalar_t__) ;

__attribute__((used)) static void *scif_rb_get(struct scif_rb *rb, u32 size)
{
 void *header = ((void*)0);

 if (scif_rb_count(rb, size) >= size)
  header = rb->rb_base + rb->current_read_offset;
 return header;
}

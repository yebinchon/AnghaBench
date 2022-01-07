
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scif_rb {int * read_ptr; int current_read_offset; } ;


 int WRITE_ONCE (int ,int ) ;
 int mb () ;

void scif_rb_update_read_ptr(struct scif_rb *rb)
{
 u32 new_offset;

 new_offset = rb->current_read_offset;






 mb();
 WRITE_ONCE(*rb->read_ptr, new_offset);
}

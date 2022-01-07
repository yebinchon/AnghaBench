
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_rb {int current_write_offset; int * write_ptr; } ;


 int WRITE_ONCE (int ,int ) ;
 int wmb () ;

void scif_rb_commit(struct scif_rb *rb)
{






 wmb();
 WRITE_ONCE(*rb->write_ptr, rb->current_write_offset);
}

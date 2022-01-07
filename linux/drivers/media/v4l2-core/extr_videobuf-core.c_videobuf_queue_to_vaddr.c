
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {TYPE_1__* int_ops; } ;
struct videobuf_buffer {int dummy; } ;
struct TYPE_2__ {void* (* vaddr ) (struct videobuf_buffer*) ;} ;


 void* stub1 (struct videobuf_buffer*) ;

void *videobuf_queue_to_vaddr(struct videobuf_queue *q,
         struct videobuf_buffer *buf)
{
 if (q->int_ops->vaddr)
  return q->int_ops->vaddr(buf);
 return ((void*)0);
}

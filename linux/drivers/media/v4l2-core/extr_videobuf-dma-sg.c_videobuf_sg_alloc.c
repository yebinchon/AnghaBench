
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {size_t msize; int * int_ops; } ;


 int sg_ops ;
 void* videobuf_alloc_vb (struct videobuf_queue*) ;

void *videobuf_sg_alloc(size_t size)
{
 struct videobuf_queue q;


 q.int_ops = &sg_ops;

 q.msize = size;

 return videobuf_alloc_vb(&q);
}

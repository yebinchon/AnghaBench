
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {TYPE_2__** bufs; TYPE_1__* int_ops; } ;
typedef enum v4l2_memory { ____Placeholder_v4l2_memory } v4l2_memory ;
struct TYPE_4__ {unsigned int i; int memory; unsigned int bsize; unsigned int boff; } ;
struct TYPE_3__ {int magic; } ;


 int ENOMEM ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_QTYPE_OPS ;
 unsigned int PAGE_ALIGN (unsigned int) ;




 int __videobuf_free (struct videobuf_queue*) ;
 int dprintk (int,char*,unsigned int,unsigned int) ;
 TYPE_2__* videobuf_alloc_vb (struct videobuf_queue*) ;

int __videobuf_mmap_setup(struct videobuf_queue *q,
   unsigned int bcount, unsigned int bsize,
   enum v4l2_memory memory)
{
 unsigned int i;
 int err;

 MAGIC_CHECK(q->int_ops->magic, MAGIC_QTYPE_OPS);

 err = __videobuf_free(q);
 if (0 != err)
  return err;


 for (i = 0; i < bcount; i++) {
  q->bufs[i] = videobuf_alloc_vb(q);

  if (((void*)0) == q->bufs[i])
   break;

  q->bufs[i]->i = i;
  q->bufs[i]->memory = memory;
  q->bufs[i]->bsize = bsize;
  switch (memory) {
  case 130:
   q->bufs[i]->boff = PAGE_ALIGN(bsize) * i;
   break;
  case 128:
  case 129:
  case 131:

   break;
  }
 }

 if (!i)
  return -ENOMEM;

 dprintk(1, "mmap setup: %d buffers, %d bytes each\n", i, bsize);

 return i;
}

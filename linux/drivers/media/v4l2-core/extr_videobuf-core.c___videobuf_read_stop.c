
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int * read_buf; int ** bufs; int stream; } ;


 int INIT_LIST_HEAD (int *) ;
 int VIDEO_MAX_FRAME ;
 int __videobuf_free (struct videobuf_queue*) ;
 int kfree (int *) ;
 int videobuf_queue_cancel (struct videobuf_queue*) ;

__attribute__((used)) static void __videobuf_read_stop(struct videobuf_queue *q)
{
 int i;

 videobuf_queue_cancel(q);
 __videobuf_free(q);
 INIT_LIST_HEAD(&q->stream);
 for (i = 0; i < VIDEO_MAX_FRAME; i++) {
  if (((void*)0) == q->bufs[i])
   continue;
  kfree(q->bufs[i]);
  q->bufs[i] = ((void*)0);
 }
 q->read_buf = ((void*)0);
}

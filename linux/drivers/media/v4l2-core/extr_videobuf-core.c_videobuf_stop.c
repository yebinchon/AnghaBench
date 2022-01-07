
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {scalar_t__ reading; scalar_t__ streaming; } ;


 int __videobuf_read_stop (struct videobuf_queue*) ;
 int __videobuf_streamoff (struct videobuf_queue*) ;
 int videobuf_queue_lock (struct videobuf_queue*) ;
 int videobuf_queue_unlock (struct videobuf_queue*) ;

void videobuf_stop(struct videobuf_queue *q)
{
 videobuf_queue_lock(q);

 if (q->streaming)
  __videobuf_streamoff(q);

 if (q->reading)
  __videobuf_read_stop(q);

 videobuf_queue_unlock(q);
}

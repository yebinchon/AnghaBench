
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int streaming; int stream; int wait; } ;


 int EAGAIN ;
 int EINVAL ;
 int dprintk (int,char*) ;
 scalar_t__ list_empty (int *) ;
 int videobuf_queue_lock (struct videobuf_queue*) ;
 int videobuf_queue_unlock (struct videobuf_queue*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int stream_next_buffer_check_queue(struct videobuf_queue *q, int noblock)
{
 int retval;

checks:
 if (!q->streaming) {
  dprintk(1, "next_buffer: Not streaming\n");
  retval = -EINVAL;
  goto done;
 }

 if (list_empty(&q->stream)) {
  if (noblock) {
   retval = -EAGAIN;
   dprintk(2, "next_buffer: no buffers to dequeue\n");
   goto done;
  } else {
   dprintk(2, "next_buffer: waiting on buffer\n");


   videobuf_queue_unlock(q);




   retval = wait_event_interruptible(q->wait,
    !list_empty(&q->stream) || !q->streaming);
   videobuf_queue_lock(q);

   if (retval)
    goto done;

   goto checks;
  }
 }

 retval = 0;

done:
 return retval;
}

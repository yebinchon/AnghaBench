
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int q_free; int q_full; int q_busy; } ;


 int cx18_queue_flush (struct cx18_stream*,int *,int *) ;

void cx18_flush_queues(struct cx18_stream *s)
{
 cx18_queue_flush(s, &s->q_busy, &s->q_free);
 cx18_queue_flush(s, &s->q_full, &s->q_free);
}

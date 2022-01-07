
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_queue {int lock; int depth; int bytesused; int list; } ;
struct cx18_stream {struct cx18_queue q_free; struct cx18_queue q_busy; struct cx18_queue q_full; } ;
struct cx18_mdl {scalar_t__ readpos; scalar_t__ bytesused; int list; int * curr_buf; scalar_t__ skipped; scalar_t__ m_flags; } ;


 scalar_t__ CX18_MAX_FW_MDLS_PER_STREAM ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct cx18_queue *_cx18_enqueue(struct cx18_stream *s, struct cx18_mdl *mdl,
     struct cx18_queue *q, int to_front)
{

 if (q != &s->q_full) {
  mdl->bytesused = 0;
  mdl->readpos = 0;
  mdl->m_flags = 0;
  mdl->skipped = 0;
  mdl->curr_buf = ((void*)0);
 }


 if (q == &s->q_busy &&
     atomic_read(&q->depth) >= CX18_MAX_FW_MDLS_PER_STREAM)
  q = &s->q_free;

 spin_lock(&q->lock);

 if (to_front)
  list_add(&mdl->list, &q->list);
 else
  list_add_tail(&mdl->list, &q->list);
 q->bytesused += mdl->bytesused - mdl->readpos;
 atomic_inc(&q->depth);

 spin_unlock(&q->lock);
 return q;
}

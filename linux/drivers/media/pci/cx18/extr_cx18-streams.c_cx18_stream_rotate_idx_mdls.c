
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int depth; } ;
struct TYPE_6__ {int depth; } ;
struct TYPE_4__ {int depth; } ;
struct cx18_stream {TYPE_2__ q_free; TYPE_3__ q_full; TYPE_1__ q_busy; } ;
struct cx18_mdl {int dummy; } ;
struct cx18 {struct cx18_stream* streams; } ;


 size_t CX18_ENC_STREAM_TYPE_IDX ;
 scalar_t__ CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN ;
 int atomic_read (int *) ;
 struct cx18_mdl* cx18_dequeue (struct cx18_stream*,TYPE_3__*) ;
 int cx18_enqueue (struct cx18_stream*,struct cx18_mdl*,TYPE_2__*) ;
 int cx18_stream_enabled (struct cx18_stream*) ;

void cx18_stream_rotate_idx_mdls(struct cx18 *cx)
{
 struct cx18_stream *s = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
 struct cx18_mdl *mdl;

 if (!cx18_stream_enabled(s))
  return;


 if ((atomic_read(&s->q_free.depth) + atomic_read(&s->q_busy.depth)) >=
         CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN)
  return;


 if (atomic_read(&s->q_full.depth) < 2)
  return;





 mdl = cx18_dequeue(s, &s->q_full);
 if (mdl != ((void*)0))
  cx18_enqueue(s, mdl, &s->q_free);
}

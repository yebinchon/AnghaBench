
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int depth; } ;
struct cx18_stream {scalar_t__ type; int name; int waitq; TYPE_2__ q_full; int s_flags; struct cx18* cx; } ;
struct cx18_mdl {scalar_t__ readpos; scalar_t__ bytesused; int m_flags; } ;
struct TYPE_3__ {struct cx18_mdl sliced_mpeg_mdl; } ;
struct cx18 {TYPE_1__ vbi; scalar_t__ dualwatch_jiffies; struct cx18_stream* streams; } ;


 int CX18_DEBUG_INFO (char*,int ) ;
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ;
 size_t CX18_ENC_STREAM_TYPE_VBI ;
 int CX18_F_M_NEED_SWAP ;
 int CX18_F_S_APPL_IO ;
 int CX18_F_S_INTERNAL_USE ;
 int CX18_F_S_STREAMING ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 int atomic_read (int *) ;
 int current ;
 struct cx18_mdl* cx18_dequeue (struct cx18_stream*,TYPE_2__*) ;
 int cx18_dualwatch (struct cx18*) ;
 int cx18_mdl_swap (struct cx18_mdl*) ;
 int cx18_process_vbi_data (struct cx18*,struct cx18_mdl*,scalar_t__) ;
 int cx18_stream_put_mdl_fw (struct cx18_stream*,struct cx18_mdl*) ;
 int finish_wait (int *,int *) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int wait ;

__attribute__((used)) static struct cx18_mdl *cx18_get_mdl(struct cx18_stream *s, int non_block,
         int *err)
{
 struct cx18 *cx = s->cx;
 struct cx18_stream *s_vbi = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
 struct cx18_mdl *mdl;
 DEFINE_WAIT(wait);

 *err = 0;
 while (1) {
  if (s->type == CX18_ENC_STREAM_TYPE_MPG) {

   if (time_after(jiffies, cx->dualwatch_jiffies + msecs_to_jiffies(1000))) {
    cx->dualwatch_jiffies = jiffies;
    cx18_dualwatch(cx);
   }
   if (test_bit(CX18_F_S_INTERNAL_USE, &s_vbi->s_flags) &&
       !test_bit(CX18_F_S_APPL_IO, &s_vbi->s_flags)) {
    while ((mdl = cx18_dequeue(s_vbi,
          &s_vbi->q_full))) {

     cx18_process_vbi_data(cx, mdl,
             s_vbi->type);
     cx18_stream_put_mdl_fw(s_vbi, mdl);
    }
   }
   mdl = &cx->vbi.sliced_mpeg_mdl;
   if (mdl->readpos != mdl->bytesused)
    return mdl;
  }


  mdl = cx18_dequeue(s, &s->q_full);
  if (mdl) {
   if (!test_and_clear_bit(CX18_F_M_NEED_SWAP,
      &mdl->m_flags))
    return mdl;
   if (s->type == CX18_ENC_STREAM_TYPE_MPG)

    cx18_mdl_swap(mdl);
   else {

    cx18_process_vbi_data(cx, mdl, s->type);
   }
   return mdl;
  }


  if (!test_bit(CX18_F_S_STREAMING, &s->s_flags)) {
   CX18_DEBUG_INFO("EOS %s\n", s->name);
   return ((void*)0);
  }


  if (non_block) {
   *err = -EAGAIN;
   return ((void*)0);
  }


  prepare_to_wait(&s->waitq, &wait, TASK_INTERRUPTIBLE);


  if (!atomic_read(&s->q_full.depth))
   schedule();
  finish_wait(&s->waitq, &wait);
  if (signal_pending(current)) {

   CX18_DEBUG_INFO("User stopped %s\n", s->name);
   *err = -EINTR;
   return ((void*)0);
  }
 }
}

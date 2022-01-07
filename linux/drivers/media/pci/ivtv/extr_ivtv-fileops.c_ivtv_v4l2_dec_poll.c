
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffers; } ;
struct ivtv_stream {TYPE_1__ q_free; int waitq; } ;
struct TYPE_4__ {int wait; int subscribed; } ;
struct ivtv_open_id {size_t type; TYPE_2__ fh; struct ivtv* itv; } ;
struct ivtv {int i_flags; struct ivtv_stream* streams; } ;
struct file {int private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLWRNORM ;
 int IVTV_DEBUG_HI_FILE (char*) ;
 int IVTV_F_I_EV_DEC_STOPPED ;
 int IVTV_F_I_EV_VSYNC ;
 int IVTV_F_I_EV_VSYNC_ENABLED ;
 int clear_bit (int ,int *) ;
 struct ivtv_open_id* fh2id (int ) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ v4l2_event_pending (TYPE_2__*) ;

__poll_t ivtv_v4l2_dec_poll(struct file *filp, poll_table *wait)
{
 struct ivtv_open_id *id = fh2id(filp->private_data);
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];
 __poll_t res = 0;


 IVTV_DEBUG_HI_FILE("Decoder poll\n");



 if (!list_empty(&id->fh.subscribed)) {
  poll_wait(filp, &id->fh.wait, wait);

  clear_bit(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);
  if (v4l2_event_pending(&id->fh))
   res = EPOLLPRI;
 } else {


  poll_wait(filp, &s->waitq, wait);
  set_bit(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);
  if (test_bit(IVTV_F_I_EV_VSYNC, &itv->i_flags) ||
      test_bit(IVTV_F_I_EV_DEC_STOPPED, &itv->i_flags))
   res = EPOLLPRI;
 }


 if (s->q_free.buffers)
  res |= EPOLLOUT | EPOLLWRNORM;
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_4__ {scalar_t__ length; } ;
struct ivtv_stream {scalar_t__ type; TYPE_2__ q_io; TYPE_1__ q_full; int waitq; int name; int s_flags; } ;
struct TYPE_6__ {int wait; } ;
struct ivtv_open_id {size_t type; TYPE_3__ fh; struct ivtv* itv; } ;
struct ivtv {int serialize_lock; struct ivtv_stream* streams; } ;
struct file {int private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int IVTV_DEBUG_FILE (char*) ;
 int IVTV_DEBUG_HI_FILE (char*) ;
 int IVTV_DEBUG_INFO (char*,int ,int) ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_RAD ;
 int IVTV_F_S_STREAMING ;
 int IVTV_F_S_STREAMOFF ;
 struct ivtv_open_id* fh2id (int ) ;
 int ivtv_start_capture (struct ivtv_open_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_requested_events (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ v4l2_event_pending (TYPE_3__*) ;

__poll_t ivtv_v4l2_enc_poll(struct file *filp, poll_table *wait)
{
 __poll_t req_events = poll_requested_events(wait);
 struct ivtv_open_id *id = fh2id(filp->private_data);
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];
 int eof = test_bit(IVTV_F_S_STREAMOFF, &s->s_flags);
 __poll_t res = 0;


 if (!eof && !test_bit(IVTV_F_S_STREAMING, &s->s_flags) &&
   s->type != IVTV_ENC_STREAM_TYPE_RAD &&
   (req_events & (EPOLLIN | EPOLLRDNORM))) {
  int rc;

  mutex_lock(&itv->serialize_lock);
  rc = ivtv_start_capture(id);
  mutex_unlock(&itv->serialize_lock);
  if (rc) {
   IVTV_DEBUG_INFO("Could not start capture for %s (%d)\n",
     s->name, rc);
   return EPOLLERR;
  }
  IVTV_DEBUG_FILE("Encoder poll started capture\n");
 }


 IVTV_DEBUG_HI_FILE("Encoder poll\n");
 poll_wait(filp, &s->waitq, wait);
 if (v4l2_event_pending(&id->fh))
  res |= EPOLLPRI;
 else
  poll_wait(filp, &id->fh.wait, wait);

 if (s->q_full.length || s->q_io.length)
  return res | EPOLLIN | EPOLLRDNORM;
 if (eof)
  return res | EPOLLHUP;
 return res;
}

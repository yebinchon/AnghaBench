
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int video_b_frames; } ;
struct ivtv {int speed; int speed_mute_audio; int serialize_lock; int dma_waitq; int i_flags; int decoding; TYPE_1__ cxhdl; } ;


 int CX2341X_DEC_PAUSE_PLAYBACK ;
 int CX2341X_DEC_SET_PLAYBACK_SPEED ;
 int CX2341X_DEC_STEP_VIDEO ;
 int CX2341X_MBOX_MAX_DATA ;
 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int IVTV_DEBUG_INFO (char*,int,int,int,int,int,int,int) ;
 int IVTV_F_I_DMA ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int current ;
 int finish_wait (int *,int *) ;
 int ivtv_api (struct ivtv*,int ,int,int*) ;
 int ivtv_vapi (struct ivtv*,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int signal_pending (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int wait ;

int ivtv_set_speed(struct ivtv *itv, int speed)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 int single_step = (speed == 1 || speed == -1);
 DEFINE_WAIT(wait);

 if (speed == 0) speed = 1000;


 if (speed == itv->speed && !single_step)
  return 0;

 if (single_step && (speed < 0) == (itv->speed < 0)) {

  ivtv_vapi(itv, CX2341X_DEC_STEP_VIDEO, 1, 0);
  itv->speed = speed;
  return 0;
 }
 if (single_step)

  speed = speed < 0 ? -1000 : 1000;

 data[0] = (speed > 1000 || speed < -1000) ? 0x80000000 : 0;
 data[0] |= (speed > 1000 || speed < -1500) ? 0x40000000 : 0;
 data[1] = (speed < 0);
 data[2] = speed < 0 ? 3 : 7;
 data[3] = v4l2_ctrl_g_ctrl(itv->cxhdl.video_b_frames);
 data[4] = (speed == 1500 || speed == 500) ? itv->speed_mute_audio : 0;
 data[5] = 0;
 data[6] = 0;

 if (speed == 1500 || speed == -1500) data[0] |= 1;
 else if (speed == 2000 || speed == -2000) data[0] |= 2;
 else if (speed > -1000 && speed < 0) data[0] |= (-1000 / speed);
 else if (speed < 1000 && speed > 0) data[0] |= (1000 / speed);


 if (atomic_read(&itv->decoding) > 0) {
  int got_sig = 0;


  ivtv_vapi(itv, CX2341X_DEC_PAUSE_PLAYBACK, 1, 0);


  mutex_unlock(&itv->serialize_lock);
  prepare_to_wait(&itv->dma_waitq, &wait, TASK_INTERRUPTIBLE);
  while (test_bit(IVTV_F_I_DMA, &itv->i_flags)) {
   got_sig = signal_pending(current);
   if (got_sig)
    break;
   got_sig = 0;
   schedule();
  }
  finish_wait(&itv->dma_waitq, &wait);
  mutex_lock(&itv->serialize_lock);
  if (got_sig)
   return -EINTR;


  ivtv_api(itv, CX2341X_DEC_SET_PLAYBACK_SPEED, 7, data);
  IVTV_DEBUG_INFO("Setting Speed to 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
    data[0], data[1], data[2], data[3], data[4], data[5], data[6]);
 }
 if (single_step) {
  speed = (speed < 0) ? -1 : 1;
  ivtv_vapi(itv, CX2341X_DEC_STEP_VIDEO, 1, 0);
 }
 itv->speed = speed;
 return 0;
}

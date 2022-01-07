
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int t ;
struct v4l2_tuner {int rxsubchans; } ;
struct cx88_core {int tvaudio; int audiomode_current; int audiomode_manual; int use_nicam; } ;


 int UNSET ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_SUB_STEREO ;
 int cx88_get_stereo (struct cx88_core*,struct v4l2_tuner*) ;
 int cx88_set_stereo (struct cx88_core*,int ,int ) ;
 int dprintk (char*) ;
 scalar_t__ kthread_should_stop () ;
 int memset (struct v4l2_tuner*,int ,int) ;
 int msleep_interruptible (int) ;
 int set_freezable () ;
 int try_to_freeze () ;

int cx88_audio_thread(void *data)
{
 struct cx88_core *core = data;
 struct v4l2_tuner t;
 u32 mode = 0;

 dprintk("cx88: tvaudio thread started\n");
 set_freezable();
 for (;;) {
  msleep_interruptible(1000);
  if (kthread_should_stop())
   break;
  try_to_freeze();

  switch (core->tvaudio) {
  case 138:
  case 136:
  case 129:
  case 133:
  case 130:
   if (core->use_nicam)
    goto hw_autodetect;


   memset(&t, 0, sizeof(t));
   cx88_get_stereo(core, &t);

   if (core->audiomode_manual != UNSET)

    continue;


   if (t.rxsubchans & V4L2_TUNER_SUB_STEREO)
    mode = V4L2_TUNER_MODE_STEREO;
   else
    mode = V4L2_TUNER_MODE_MONO;
   if (mode == core->audiomode_current)
    continue;

   cx88_set_stereo(core, mode, 0);
   break;
  case 128:
  case 137:
  case 135:
  case 131:
  case 134:
  case 132:
hw_autodetect:




   break;
  }
 }

 dprintk("cx88: tvaudio thread exiting\n");
 return 0;
}

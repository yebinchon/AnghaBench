
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {int prevmode; int audmode; int wt; scalar_t__ radio; struct v4l2_subdev sd; struct CHIPDESC* desc; } ;
struct CHIPDESC {int (* getrxsubchans ) (struct CHIPSTATE*) ;int (* setaudmode ) (struct CHIPSTATE*,int) ;} ;


 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;





 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_STEREO ;
 int debug ;
 scalar_t__ jiffies ;
 scalar_t__ kthread_should_stop () ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int stub1 (struct CHIPSTATE*) ;
 int stub2 (struct CHIPSTATE*,int) ;
 int try_to_freeze () ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int chip_thread(void *data)
{
 struct CHIPSTATE *chip = data;
 struct CHIPDESC *desc = chip->desc;
 struct v4l2_subdev *sd = &chip->sd;
 int mode, selected;

 v4l2_dbg(1, debug, sd, "thread started\n");
 set_freezable();
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (!kthread_should_stop())
   schedule();
  set_current_state(TASK_RUNNING);
  try_to_freeze();
  if (kthread_should_stop())
   break;
  v4l2_dbg(1, debug, sd, "thread wakeup\n");


  if (chip->radio)
   continue;


  mode = desc->getrxsubchans(chip);
  if (mode == chip->prevmode)
   continue;


  v4l2_dbg(1, debug, sd, "thread checkmode\n");

  chip->prevmode = mode;

  selected = 129;
  switch (chip->audmode) {
  case 129:
   if (mode & V4L2_TUNER_SUB_LANG1)
    selected = 132;
   break;
  case 128:
  case 132:
   if (mode & V4L2_TUNER_SUB_LANG1)
    selected = 132;
   else if (mode & V4L2_TUNER_SUB_STEREO)
    selected = 128;
   break;
  case 130:
   if (mode & V4L2_TUNER_SUB_LANG2)
    selected = 130;
   else if (mode & V4L2_TUNER_SUB_STEREO)
    selected = 128;
   break;
  case 131:
   if (mode & V4L2_TUNER_SUB_LANG2)
    selected = 131;
   else if (mode & V4L2_TUNER_SUB_STEREO)
    selected = 128;
  }
  desc->setaudmode(chip, selected);


  mod_timer(&chip->wt, jiffies+msecs_to_jiffies(2000));
 }

 v4l2_dbg(1, debug, sd, "thread exiting\n");
 return 0;
}

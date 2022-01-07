
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int mutex; int curr_norm; scalar_t__ streaming; } ;


 int ADV7180_STD_AD_PAL_BG_NTSC_J_SECAM ;
 int EBUSY ;
 int __adv7180_status (struct adv7180_state*,int *,int *) ;
 int adv7180_set_video_standard (struct adv7180_state*,int) ;
 int msleep (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;
 int v4l2_std_to_adv7180 (int ) ;

__attribute__((used)) static int adv7180_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct adv7180_state *state = to_state(sd);
 int err = mutex_lock_interruptible(&state->mutex);
 if (err)
  return err;

 if (state->streaming) {
  err = -EBUSY;
  goto unlock;
 }

 err = adv7180_set_video_standard(state,
   ADV7180_STD_AD_PAL_BG_NTSC_J_SECAM);
 if (err)
  goto unlock;

 msleep(100);
 __adv7180_status(state, ((void*)0), std);

 err = v4l2_std_to_adv7180(state->curr_norm);
 if (err < 0)
  goto unlock;

 err = adv7180_set_video_standard(state, err);

unlock:
 mutex_unlock(&state->mutex);
 return err;
}

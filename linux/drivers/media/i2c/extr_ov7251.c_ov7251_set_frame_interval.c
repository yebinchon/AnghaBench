
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7251_mode_info {int link_freq; int exposure_def; int timeperframe; int exposure_max; int pixel_clock; } ;
struct ov7251 {int lock; struct ov7251_mode_info const* current_mode; int gain; int exposure; int link_freq; int pixel_clock; } ;


 int __v4l2_ctrl_modify_range (int ,int,int ,int,int) ;
 int __v4l2_ctrl_s_ctrl (int ,int) ;
 int __v4l2_ctrl_s_ctrl_int64 (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov7251_mode_info* ov7251_find_mode_by_ival (struct ov7251*,int *) ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7251_set_frame_interval(struct v4l2_subdev *subdev,
         struct v4l2_subdev_frame_interval *fi)
{
 struct ov7251 *ov7251 = to_ov7251(subdev);
 const struct ov7251_mode_info *new_mode;
 int ret = 0;

 mutex_lock(&ov7251->lock);
 new_mode = ov7251_find_mode_by_ival(ov7251, &fi->interval);

 if (new_mode != ov7251->current_mode) {
  ret = __v4l2_ctrl_s_ctrl_int64(ov7251->pixel_clock,
            new_mode->pixel_clock);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_s_ctrl(ov7251->link_freq,
      new_mode->link_freq);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_modify_range(ov7251->exposure,
            1, new_mode->exposure_max,
            1, new_mode->exposure_def);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_s_ctrl(ov7251->exposure,
      new_mode->exposure_def);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_s_ctrl(ov7251->gain, 16);
  if (ret < 0)
   goto exit;

  ov7251->current_mode = new_mode;
 }

 fi->interval = ov7251->current_mode->timeperframe;

exit:
 mutex_unlock(&ov7251->lock);

 return ret;
}

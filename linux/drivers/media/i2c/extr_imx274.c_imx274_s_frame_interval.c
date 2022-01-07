
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {TYPE_3__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int val; } ;
struct TYPE_4__ {struct v4l2_ctrl* exposure; } ;
struct stimx274 {int lock; TYPE_2__* client; TYPE_1__ ctrls; } ;
struct TYPE_5__ {int dev; } ;


 int IMX274_MIN_EXPOSURE_TIME ;
 scalar_t__ __v4l2_ctrl_modify_range (struct v4l2_ctrl*,int,int,int,int) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int imx274_set_exposure (struct stimx274*,int ) ;
 int imx274_set_frame_interval (struct stimx274*,TYPE_3__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stimx274* to_imx274 (struct v4l2_subdev*) ;

__attribute__((used)) static int imx274_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct stimx274 *imx274 = to_imx274(sd);
 struct v4l2_ctrl *ctrl = imx274->ctrls.exposure;
 int min, max, def;
 int ret;

 mutex_lock(&imx274->lock);
 ret = imx274_set_frame_interval(imx274, fi->interval);

 if (!ret) {




  min = IMX274_MIN_EXPOSURE_TIME;
  max = fi->interval.numerator * 1000000
   / fi->interval.denominator;
  def = max;
  if (__v4l2_ctrl_modify_range(ctrl, min, max, 1, def)) {
   dev_err(&imx274->client->dev,
    "Exposure ctrl range update failed\n");
   goto unlock;
  }


  imx274_set_exposure(imx274, ctrl->val);

  dev_dbg(&imx274->client->dev, "set frame interval to %uus\n",
   fi->interval.numerator * 1000000
   / fi->interval.denominator);
 }

unlock:
 mutex_unlock(&imx274->lock);

 return ret;
}

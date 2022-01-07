
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct via_format {int mbus_code; } ;
struct TYPE_5__ {int pixelformat; } ;
struct via_camera {scalar_t__ opstate; int mbus_code; TYPE_2__ sensor_format; TYPE_2__ user_format; } ;
struct TYPE_4__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EBUSY ;
 scalar_t__ S_IDLE ;
 struct via_format* via_find_format (int ) ;
 int viacam_config_controller (struct via_camera*) ;
 int viacam_configure_sensor (struct via_camera*) ;
 int viacam_do_try_fmt (struct via_camera*,TYPE_2__*,TYPE_2__*) ;
 struct via_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int viacam_s_fmt_vid_cap(struct file *filp, void *priv,
  struct v4l2_format *fmt)
{
 struct via_camera *cam = video_drvdata(filp);
 int ret;
 struct v4l2_format sfmt;
 struct via_format *f = via_find_format(fmt->fmt.pix.pixelformat);





 if (cam->opstate != S_IDLE)
  return -EBUSY;




 ret = viacam_do_try_fmt(cam, &fmt->fmt.pix, &sfmt.fmt.pix);
 if (ret)
  return ret;



 cam->user_format = fmt->fmt.pix;
 cam->sensor_format = sfmt.fmt.pix;
 cam->mbus_code = f->mbus_code;
 ret = viacam_configure_sensor(cam);
 if (!ret)
  ret = viacam_config_controller(cam);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_frmivalenum {int index; TYPE_1__ discrete; int type; } ;
struct tw686x_video_channel {int video_standard; } ;
struct file {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int TW686X_MAX_FPS (int ) ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_enum_frameintervals(struct file *file, void *priv,
          struct v4l2_frmivalenum *ival)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 int max_fps = TW686X_MAX_FPS(vc->video_standard);
 int max_rates = DIV_ROUND_UP(max_fps, 2);

 if (ival->index >= max_rates)
  return -EINVAL;

 ival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 ival->discrete.numerator = 1;
 if (ival->index < (max_rates - 1))
  ival->discrete.denominator = (ival->index + 1) * 2;
 else
  ival->discrete.denominator = max_fps;
 return 0;
}

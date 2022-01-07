
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fract {int numerator; unsigned int denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct mt9v111_dev {unsigned int fps; scalar_t__ sysclk; int pending; int stream_mutex; TYPE_1__ fmt; scalar_t__ streaming; } ;


 scalar_t__ CIF_HEIGHT ;
 scalar_t__ CIF_WIDTH ;
 scalar_t__ DIV_ROUND_CLOSEST (int ,int) ;
 int EBUSY ;
 int EINVAL ;
 int MT9V111_MAX_CLKIN ;
 scalar_t__ QVGA_HEIGHT ;
 scalar_t__ QVGA_WIDTH ;
 int mt9v111_calc_frame_rate (struct mt9v111_dev*,struct v4l2_fract*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mt9v111_dev* sd_to_mt9v111 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v111_s_frame_interval(struct v4l2_subdev *sd,
        struct v4l2_subdev_frame_interval *ival)
{
 struct mt9v111_dev *mt9v111 = sd_to_mt9v111(sd);
 struct v4l2_fract *tpf = &ival->interval;
 unsigned int fps = tpf->numerator ?
      tpf->denominator / tpf->numerator :
      tpf->denominator;
 unsigned int max_fps;

 if (!tpf->numerator)
  tpf->numerator = 1;

 mutex_lock(&mt9v111->stream_mutex);

 if (mt9v111->streaming) {
  mutex_unlock(&mt9v111->stream_mutex);
  return -EBUSY;
 }

 if (mt9v111->fps == fps) {
  mutex_unlock(&mt9v111->stream_mutex);
  return 0;
 }


 if (mt9v111->fmt.width < QVGA_WIDTH &&
     mt9v111->fmt.height < QVGA_HEIGHT)
  max_fps = 90;
 else if (mt9v111->fmt.width < CIF_WIDTH &&
   mt9v111->fmt.height < CIF_HEIGHT)
  max_fps = 60;
 else
  max_fps = mt9v111->sysclk <
    DIV_ROUND_CLOSEST(MT9V111_MAX_CLKIN, 2) ? 15 :
           30;

 if (fps > max_fps) {
  mutex_unlock(&mt9v111->stream_mutex);
  return -EINVAL;
 }

 mt9v111_calc_frame_rate(mt9v111, tpf);

 mt9v111->fps = fps;
 mt9v111->pending = 1;

 mutex_unlock(&mt9v111->stream_mutex);

 return 0;
}

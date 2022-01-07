
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7251 {int lock; } ;


 int * __ov7251_get_pad_format (struct ov7251*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7251_get_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *format)
{
 struct ov7251 *ov7251 = to_ov7251(sd);

 mutex_lock(&ov7251->lock);
 format->format = *__ov7251_get_pad_format(ov7251, cfg, format->pad,
        format->which);
 mutex_unlock(&ov7251->lock);

 return 0;
}

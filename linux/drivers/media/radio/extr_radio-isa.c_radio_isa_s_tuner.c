
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ audmode; scalar_t__ index; } ;
struct radio_isa_ops {int (* s_stereo ) (struct radio_isa_card*,int) ;} ;
struct radio_isa_card {int stereo; TYPE_1__* drv; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct radio_isa_ops* ops; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_MODE_STEREO ;
 int stub1 (struct radio_isa_card*,int) ;
 struct radio_isa_card* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_isa_s_tuner(struct file *file, void *priv,
    const struct v4l2_tuner *v)
{
 struct radio_isa_card *isa = video_drvdata(file);
 const struct radio_isa_ops *ops = isa->drv->ops;

 if (v->index)
  return -EINVAL;
 if (ops->s_stereo) {
  isa->stereo = (v->audmode == V4L2_TUNER_MODE_STEREO);
  return ops->s_stereo(isa, isa->stereo);
 }
 return 0;
}

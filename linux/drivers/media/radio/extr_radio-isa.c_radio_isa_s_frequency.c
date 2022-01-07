
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct radio_isa_card {int freq; TYPE_2__* drv; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* s_frequency ) (struct radio_isa_card*,int ) ;} ;


 int EINVAL ;
 int FREQ_HIGH ;
 int FREQ_LOW ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int clamp (int ,int ,int ) ;
 int stub1 (struct radio_isa_card*,int ) ;
 struct radio_isa_card* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_isa_s_frequency(struct file *file, void *priv,
    const struct v4l2_frequency *f)
{
 struct radio_isa_card *isa = video_drvdata(file);
 u32 freq = f->frequency;
 int res;

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;
 freq = clamp(freq, FREQ_LOW, FREQ_HIGH);
 res = isa->drv->ops->s_frequency(isa, freq);
 if (res == 0)
  isa->freq = freq;
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct si470x_device {int (* set_register ) (struct si470x_device*,size_t) ;int * registers; } ;
struct file {int dummy; } ;


 int EINVAL ;
 size_t POWERCFG ;
 int POWERCFG_MONO ;


 int stub1 (struct si470x_device*,size_t) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_s_tuner(struct file *file, void *priv,
  const struct v4l2_tuner *tuner)
{
 struct si470x_device *radio = video_drvdata(file);

 if (tuner->index != 0)
  return -EINVAL;


 switch (tuner->audmode) {
 case 129:
  radio->registers[POWERCFG] |= POWERCFG_MONO;
  break;
 case 128:
 default:
  radio->registers[POWERCFG] &= ~POWERCFG_MONO;
  break;
 }

 return radio->set_register(radio, POWERCFG);
}

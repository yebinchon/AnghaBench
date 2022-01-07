
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int dummy; } ;
struct snd_tea575x {int dummy; } ;
struct file {int dummy; } ;


 int snd_tea575x_g_tuner (struct snd_tea575x*,struct v4l2_tuner*) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *v)
{
 struct snd_tea575x *tea = video_drvdata(file);

 return snd_tea575x_g_tuner(tea, v);
}

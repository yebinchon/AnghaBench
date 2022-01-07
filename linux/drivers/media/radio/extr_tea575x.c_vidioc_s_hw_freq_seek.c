
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_hw_freq_seek {int dummy; } ;
struct snd_tea575x {int dummy; } ;
struct file {int dummy; } ;


 int snd_tea575x_s_hw_freq_seek (struct file*,struct snd_tea575x*,struct v4l2_hw_freq_seek const*) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_hw_freq_seek(struct file *file, void *fh,
     const struct v4l2_hw_freq_seek *a)
{
 struct snd_tea575x *tea = video_drvdata(file);

 return snd_tea575x_s_hw_freq_seek(file, tea, a);
}

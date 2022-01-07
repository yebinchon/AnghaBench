
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct em28xx {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 TYPE_1__* INPUT (unsigned int) ;
 unsigned int MAX_EM28XX_INPUT ;
 struct em28xx* video_drvdata (struct file*) ;
 int video_mux (struct em28xx*,unsigned int) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct em28xx *dev = video_drvdata(file);

 if (i >= MAX_EM28XX_INPUT)
  return -EINVAL;
 if (!INPUT(i)->type)
  return -EINVAL;

 video_mux(dev, i);
 return 0;
}

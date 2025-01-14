
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EINVAL ;
 unsigned int SAA7134_INPUT_MAX ;
 scalar_t__ SAA7134_NO_INPUT ;
 TYPE_1__ card_in (struct saa7134_dev*,unsigned int) ;
 struct saa7134_dev* video_drvdata (struct file*) ;
 int video_mux (struct saa7134_dev*,unsigned int) ;

int saa7134_s_input(struct file *file, void *priv, unsigned int i)
{
 struct saa7134_dev *dev = video_drvdata(file);

 if (i >= SAA7134_INPUT_MAX)
  return -EINVAL;
 if (card_in(dev, i).type == SAA7134_NO_INPUT)
  return -EINVAL;
 video_mux(dev, i);
 return 0;
}

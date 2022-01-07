
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {unsigned int ctl_input; } ;
struct file {int dummy; } ;


 struct saa7134_dev* video_drvdata (struct file*) ;

int saa7134_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct saa7134_dev *dev = video_drvdata(file);

 *i = dev->ctl_input;
 return 0;
}

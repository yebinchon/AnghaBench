
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct hexium {unsigned int cur_input; } ;
struct file {int dummy; } ;


 int DEB_D (char*,unsigned int) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *fh, unsigned int *input)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct hexium *hexium = (struct hexium *) dev->ext_priv;

 *input = hexium->cur_input;

 DEB_D("VIDIOC_G_INPUT: %d\n", *input);
 return 0;
}

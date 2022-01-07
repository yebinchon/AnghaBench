
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct hexium {unsigned int cur_input; } ;
struct file {int dummy; } ;


 int DEB_EE (char*,unsigned int) ;
 int EINVAL ;
 unsigned int HEXIUM_INPUTS ;
 int hexium_set_input (struct hexium*,unsigned int) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *fh, unsigned int input)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct hexium *hexium = (struct hexium *) dev->ext_priv;

 DEB_EE("VIDIOC_S_INPUT %d\n", input);

 if (input >= HEXIUM_INPUTS)
  return -EINVAL;

 hexium->cur_input = input;
 hexium_set_input(hexium, input);
 return 0;
}

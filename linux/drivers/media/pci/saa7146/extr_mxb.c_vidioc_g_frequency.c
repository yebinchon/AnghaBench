
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {struct v4l2_frequency cur_freq; } ;
struct file {int dummy; } ;


 int DEB_EE (char*,int ) ;
 int EINVAL ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *fh, struct v4l2_frequency *f)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 if (f->tuner)
  return -EINVAL;
 *f = mxb->cur_freq;

 DEB_EE("VIDIOC_G_FREQ: freq:0x%08x\n", mxb->cur_freq.frequency);
 return 0;
}

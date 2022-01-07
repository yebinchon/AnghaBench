
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int dummy; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {size_t cur_audinput; } ;
struct file {int dummy; } ;


 int DEB_EE (char*) ;
 struct v4l2_audio* mxb_audios ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *fh, struct v4l2_audio *a)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 DEB_EE("VIDIOC_G_AUDIO\n");
 *a = mxb_audios[mxb->cur_audinput];
 return 0;
}

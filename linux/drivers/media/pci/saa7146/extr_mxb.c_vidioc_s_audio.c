
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_audio {int index; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {size_t cur_input; scalar_t__ cur_audinput; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int audioset; } ;


 int DEB_D (char*,int) ;
 int EINVAL ;
 TYPE_1__* mxb_inputs ;
 int mxb_update_audmode (struct mxb*) ;
 int tea6420_route (struct mxb*,scalar_t__) ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *fh, const struct v4l2_audio *a)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 DEB_D("VIDIOC_S_AUDIO %d\n", a->index);
 if (mxb_inputs[mxb->cur_input].audioset & (1 << a->index)) {
  if (mxb->cur_audinput != a->index) {
   mxb->cur_audinput = a->index;
   tea6420_route(mxb, a->index);
   if (mxb->cur_audinput == 0)
    mxb_update_audmode(mxb);
  }
  return 0;
 }
 return -EINVAL;
}

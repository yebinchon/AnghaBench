
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct saa7146_standard {scalar_t__ id; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {scalar_t__ cur_input; } ;


 int DEB_D (char*) ;
 int GPIO_CTRL ;
 int V4L2_STD_PAL_BG ;
 scalar_t__ V4L2_STD_PAL_I ;
 int core ;
 int s_gpio ;
 int s_std ;
 int saa7111a_call (struct mxb*,int ,int ,int) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int tuner_call (struct mxb*,int ,int ,int) ;
 int video ;

__attribute__((used)) static int std_callback(struct saa7146_dev *dev, struct saa7146_standard *standard)
{
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 if (V4L2_STD_PAL_I == standard->id) {
  v4l2_std_id std = V4L2_STD_PAL_I;

  DEB_D("VIDIOC_S_STD: setting mxb for PAL_I\n");

  saa7146_write(dev, GPIO_CTRL, 0x00404050);
  saa7111a_call(mxb, core, s_gpio, 0);
  saa7111a_call(mxb, video, s_std, std);
  if (mxb->cur_input == 0)
   tuner_call(mxb, video, s_std, std);
 } else {
  v4l2_std_id std = V4L2_STD_PAL_BG;

  if (mxb->cur_input)
   std = standard->id;
  DEB_D("VIDIOC_S_STD: setting mxb for PAL/NTSC/SECAM\n");

  saa7146_write(dev, GPIO_CTRL, 0x00404050);
  saa7111a_call(mxb, core, s_gpio, 1);
  saa7111a_call(mxb, video, s_std, std);
  if (mxb->cur_input == 0)
   tuner_call(mxb, video, s_std, std);
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_tuner {int audmode; int index; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {int current_input; int analog_tuner_flags; } ;


 int EINVAL ;
 int MSP_WR_DSP ;




 int dprintk (int,char*,...) ;
 int msp_writereg (struct av7110*,int ,int,int) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *fh, const struct v4l2_tuner *t)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;
 u16 fm_matrix, src;
 dprintk(2, "VIDIOC_S_TUNER: %d\n", t->index);

 if (!av7110->analog_tuner_flags || av7110->current_input != 1)
  return -EINVAL;

 switch (t->audmode) {
 case 128:
  dprintk(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_STEREO\n");
  fm_matrix = 0x3001;
  src = 0x0020;
  break;
 case 130:
  dprintk(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1_LANG2\n");
  fm_matrix = 0x3000;
  src = 0x0020;
  break;
 case 131:
  dprintk(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1\n");
  fm_matrix = 0x3000;
  src = 0x0000;
  break;
 case 129:
  dprintk(2, "VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG2\n");
  fm_matrix = 0x3000;
  src = 0x0010;
  break;
 default:
  dprintk(2, "VIDIOC_S_TUNER: TDA9840_SET_MONO\n");
  fm_matrix = 0x3000;
  src = 0x0030;
  break;
 }
 msp_writereg(av7110, MSP_WR_DSP, 0x000e, fm_matrix);
 msp_writereg(av7110, MSP_WR_DSP, 0x0008, src);
 msp_writereg(av7110, MSP_WR_DSP, 0x0009, src);
 msp_writereg(av7110, MSP_WR_DSP, 0x000a, src);
 return 0;
}

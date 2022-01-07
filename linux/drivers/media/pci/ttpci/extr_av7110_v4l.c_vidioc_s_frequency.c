
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ type; int frequency; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {int analog_tuner_flags; int current_input; int current_freq; } ;


 int ANALOG_TUNER_STV0297 ;
 int ANALOG_TUNER_VES1820 ;
 int EINVAL ;
 int MSP_WR_DSP ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 int dprintk (int,char*,int ) ;
 int msp_writereg (struct av7110*,int ,int,int) ;
 int stv0297_set_tv_freq (struct saa7146_dev*,int ) ;
 int ves1820_set_tv_freq (struct saa7146_dev*,int ) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *fh, const struct v4l2_frequency *f)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;

 dprintk(2, "VIDIOC_S_FREQUENCY: freq:0x%08x\n", f->frequency);

 if (!av7110->analog_tuner_flags || av7110->current_input != 1)
  return -EINVAL;

 if (V4L2_TUNER_ANALOG_TV != f->type)
  return -EINVAL;

 msp_writereg(av7110, MSP_WR_DSP, 0x0000, 0xffe0);
 msp_writereg(av7110, MSP_WR_DSP, 0x0007, 0xffe0);


 if (av7110->analog_tuner_flags & ANALOG_TUNER_VES1820)
  ves1820_set_tv_freq(dev, f->frequency);
 else if (av7110->analog_tuner_flags & ANALOG_TUNER_STV0297)
  stv0297_set_tv_freq(dev, f->frequency);
 av7110->current_freq = f->frequency;

 msp_writereg(av7110, MSP_WR_DSP, 0x0015, 0x003f);
 msp_writereg(av7110, MSP_WR_DSP, 0x0015, 0x0000);
 msp_writereg(av7110, MSP_WR_DSP, 0x0000, 0x4f00);
 msp_writereg(av7110, MSP_WR_DSP, 0x0007, 0x4f00);
 return 0;
}

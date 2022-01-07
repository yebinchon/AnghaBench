
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct tw686x_video_channel {size_t ch; int vidq; struct tw686x_dev* dev; } ;
struct tw686x_dev {int dummy; } ;
struct file {int dummy; } ;


 unsigned int BIT (int) ;
 int EBUSY ;
 int * SDT ;
 int * SDT_EN ;







 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 unsigned int reg_read (struct tw686x_dev*,int ) ;
 int reg_write (struct tw686x_dev*,int ,unsigned int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 scalar_t__ vb2_is_streaming (int *) ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_querystd(struct file *file, void *priv, v4l2_std_id *std)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 struct tw686x_dev *dev = vc->dev;
 unsigned int old_std, detected_std = 0;
 unsigned long end;

 if (vb2_is_streaming(&vc->vidq))
  return -EBUSY;


 old_std = reg_read(dev, SDT[vc->ch]);
 reg_write(dev, SDT[vc->ch], 0x7);
 reg_write(dev, SDT_EN[vc->ch], 0xff);

 end = jiffies + msecs_to_jiffies(500);
 while (time_is_after_jiffies(end)) {

  detected_std = reg_read(dev, SDT[vc->ch]);
  if (!(detected_std & BIT(7)))
   break;
  msleep(100);
 }
 reg_write(dev, SDT[vc->ch], old_std);


 if (detected_std & BIT(7))
  return 0;

 detected_std = (detected_std >> 4) & 0x7;
 switch (detected_std) {
 case 133:
  *std &= V4L2_STD_NTSC;
  break;
 case 134:
  *std &= V4L2_STD_NTSC_443;
  break;
 case 129:
  *std &= V4L2_STD_PAL_M;
  break;
 case 131:
  *std &= V4L2_STD_PAL_60;
  break;
 case 132:
  *std &= V4L2_STD_PAL;
  break;
 case 130:
  *std &= V4L2_STD_PAL_Nc;
  break;
 case 128:
  *std &= V4L2_STD_SECAM;
  break;
 default:
  *std = 0;
 }
 return 0;
}

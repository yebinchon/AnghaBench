
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u32 ;
struct tw686x_video_channel {int video_standard; size_t ch; int dev; } ;


 int EINVAL ;
 int * SDT ;
 int SYS_MODE_DMA_SHIFT ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int VIDEO_CONTROL1 ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int) ;

__attribute__((used)) static int tw686x_set_standard(struct tw686x_video_channel *vc, v4l2_std_id id)
{
 u32 val;

 if (id & V4L2_STD_NTSC)
  val = 0;
 else if (id & V4L2_STD_PAL)
  val = 1;
 else if (id & V4L2_STD_SECAM)
  val = 2;
 else if (id & V4L2_STD_NTSC_443)
  val = 3;
 else if (id & V4L2_STD_PAL_M)
  val = 4;
 else if (id & V4L2_STD_PAL_Nc)
  val = 5;
 else if (id & V4L2_STD_PAL_60)
  val = 6;
 else
  return -EINVAL;

 vc->video_standard = id;
 reg_write(vc->dev, SDT[vc->ch], val);

 val = reg_read(vc->dev, VIDEO_CONTROL1);
 if (id & V4L2_STD_525_60)
  val &= ~(1 << (SYS_MODE_DMA_SHIFT + vc->ch));
 else
  val |= (1 << (SYS_MODE_DMA_SHIFT + vc->ch));
 reg_write(vc->dev, VIDEO_CONTROL1, val);

 return 0;
}

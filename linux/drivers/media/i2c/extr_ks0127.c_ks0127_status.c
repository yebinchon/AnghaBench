
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int KS_STAT ;
 int V4L2_IN_ST_NO_COLOR ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int V4L2_STD_ALL ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_UNKNOWN ;
 int ks0127_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int ks0127_status(struct v4l2_subdev *sd, u32 *pstatus, v4l2_std_id *pstd)
{
 int stat = V4L2_IN_ST_NO_SIGNAL;
 u8 status;
 v4l2_std_id std = pstd ? *pstd : V4L2_STD_ALL;

 status = ks0127_read(sd, KS_STAT);
 if (!(status & 0x20))
  stat = 0;
 if (!(status & 0x01)) {
  stat |= V4L2_IN_ST_NO_COLOR;
  std = V4L2_STD_UNKNOWN;
 } else {
  if ((status & 0x08))
   std &= V4L2_STD_PAL;
  else
   std &= V4L2_STD_NTSC;
 }
 if ((status & 0x10))
  std &= V4L2_STD_525_60;
 else
  std &= V4L2_STD_625_50;
 if (pstd)
  *pstd = std;
 if (pstatus)
  *pstatus = stat;
 return 0;
}

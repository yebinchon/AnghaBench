
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct bt819 {int dummy; } ;


 int V4L2_IN_ST_NO_SIGNAL ;
 int V4L2_STD_ALL ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_UNKNOWN ;
 int bt819_read (struct bt819*,int) ;
 int debug ;
 struct bt819* to_bt819 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int bt819_status(struct v4l2_subdev *sd, u32 *pstatus, v4l2_std_id *pstd)
{
 struct bt819 *decoder = to_bt819(sd);
 int status = bt819_read(decoder, 0x00);
 int res = V4L2_IN_ST_NO_SIGNAL;
 v4l2_std_id std = pstd ? *pstd : V4L2_STD_ALL;

 if ((status & 0x80))
  res = 0;
 else
  std = V4L2_STD_UNKNOWN;

 if ((status & 0x10))
  std &= V4L2_STD_PAL;
 else
  std &= V4L2_STD_NTSC;
 if (pstd)
  *pstd = std;
 if (pstatus)
  *pstatus = res;

 v4l2_dbg(1, debug, sd, "get status %x\n", status);
 return 0;
}

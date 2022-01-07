
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp7002 {int streaming; } ;


 int TVP7002_MISC_CTL_2 ;
 int debug ;
 struct tvp7002* to_tvp7002 (struct v4l2_subdev*) ;
 int tvp7002_write (struct v4l2_subdev*,int ,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int tvp7002_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct tvp7002 *device = to_tvp7002(sd);
 int error;

 if (device->streaming == enable)
  return 0;


 error = tvp7002_write(sd, TVP7002_MISC_CTL_2, enable ? 0x00 : 0x03);
 if (error) {
  v4l2_dbg(1, debug, sd, "Fail to set streaming\n");
  return error;
 }

 device->streaming = enable;
 return 0;
}

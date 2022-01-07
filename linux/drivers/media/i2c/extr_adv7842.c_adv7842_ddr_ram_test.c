
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int EIO ;
 int afe_write (struct v4l2_subdev*,int,int) ;
 int debug ;
 int io_write (struct v4l2_subdev*,int,int) ;
 int msleep (int) ;
 int sdp_io_read (struct v4l2_subdev*,int) ;
 int sdp_io_write (struct v4l2_subdev*,int,int) ;
 int sdp_write (struct v4l2_subdev*,int,int) ;
 int usleep_range (int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int,int,int) ;

__attribute__((used)) static int adv7842_ddr_ram_test(struct v4l2_subdev *sd)
{






 int i;
 int pass = 0;
 int fail = 0;
 int complete = 0;

 io_write(sd, 0x00, 0x01);
 io_write(sd, 0x01, 0x00);
 afe_write(sd, 0x80, 0x92);
 afe_write(sd, 0x9B, 0x01);
 afe_write(sd, 0x9C, 0x60);
 afe_write(sd, 0x9E, 0x02);
 afe_write(sd, 0xA0, 0x0B);
 afe_write(sd, 0xC3, 0x02);
 io_write(sd, 0x0C, 0x40);
 io_write(sd, 0x15, 0xBA);
 sdp_write(sd, 0x12, 0x00);
 io_write(sd, 0xFF, 0x04);

 usleep_range(5000, 6000);

 sdp_write(sd, 0x12, 0x00);
 sdp_io_write(sd, 0x2A, 0x01);
 sdp_io_write(sd, 0x7c, 0x19);
 sdp_io_write(sd, 0x80, 0x87);
 sdp_io_write(sd, 0x81, 0x4a);
 sdp_io_write(sd, 0x82, 0x2c);
 sdp_io_write(sd, 0x83, 0x0e);
 sdp_io_write(sd, 0x84, 0x94);
 sdp_io_write(sd, 0x85, 0x62);
 sdp_io_write(sd, 0x7d, 0x00);
 sdp_io_write(sd, 0x7e, 0x1a);

 usleep_range(5000, 6000);

 sdp_io_write(sd, 0xd9, 0xd5);
 sdp_write(sd, 0x12, 0x05);

 msleep(20);

 for (i = 0; i < 10; i++) {
  u8 result = sdp_io_read(sd, 0xdb);
  if (result & 0x10) {
   complete++;
   if (result & 0x20)
    fail++;
   else
    pass++;
  }
  msleep(20);
 }

 v4l2_dbg(1, debug, sd,
  "Ram Test: completed %d of %d: pass %d, fail %d\n",
  complete, i, pass, fail);

 if (!complete || fail)
  return -EIO;
 return 0;
}

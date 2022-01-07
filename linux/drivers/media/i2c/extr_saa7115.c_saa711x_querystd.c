
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ ident; } ;


 int R_1E_STATUS_BYTE_1_VD_DEC ;
 int R_1F_STATUS_BYTE_2_VD_DEC ;
 scalar_t__ SAA7115 ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_N ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int V4L2_STD_UNKNOWN ;
 int debug ;
 int saa711x_read (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int saa711x_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct saa711x_state *state = to_state(sd);
 int reg1f, reg1e;







 reg1f = saa711x_read(sd, R_1F_STATUS_BYTE_2_VD_DEC);

 if (state->ident == SAA7115) {
  reg1e = saa711x_read(sd, R_1E_STATUS_BYTE_1_VD_DEC);

  v4l2_dbg(1, debug, sd, "Status byte 1 (0x1e)=0x%02x\n", reg1e);

  switch (reg1e & 0x03) {
  case 1:
   *std &= V4L2_STD_NTSC;
   break;
  case 2:





   *std &= V4L2_STD_PAL | V4L2_STD_PAL_N | V4L2_STD_PAL_Nc |
    V4L2_STD_PAL_M | V4L2_STD_PAL_60;
   break;
  case 3:
   *std &= V4L2_STD_SECAM;
   break;
  default:
   *std = V4L2_STD_UNKNOWN;

   break;
  }
 }

 v4l2_dbg(1, debug, sd, "Status byte 2 (0x1f)=0x%02x\n", reg1f);


 if (reg1f & 0x40) {
  *std = V4L2_STD_UNKNOWN;
  goto ret;
 }

 if (reg1f & 0x20)
  *std &= V4L2_STD_525_60;
 else
  *std &= V4L2_STD_625_50;

ret:
 v4l2_dbg(1, debug, sd, "detected std mask = %08Lx\n", *std);

 return 0;
}

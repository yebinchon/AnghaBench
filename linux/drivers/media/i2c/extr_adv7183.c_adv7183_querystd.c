
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv7183 {int std; } ;


 int ADV7183_IN_CTRL ;
 int ADV7183_STATUS_1 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int V4L2_STD_UNKNOWN ;
 int adv7183_read (struct v4l2_subdev*,int ) ;
 int adv7183_s_std (struct v4l2_subdev*,int ) ;
 int adv7183_write (struct v4l2_subdev*,int ,int) ;
 int mdelay (int) ;
 struct adv7183* to_adv7183 (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7183_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct adv7183 *decoder = to_adv7183(sd);
 int reg;


 reg = adv7183_read(sd, ADV7183_IN_CTRL) & 0xF;
 adv7183_write(sd, ADV7183_IN_CTRL, reg);


 mdelay(10);


 reg = adv7183_read(sd, ADV7183_STATUS_1);
 switch ((reg >> 0x4) & 0x7) {
 case 0:
  *std &= V4L2_STD_NTSC;
  break;
 case 1:
  *std &= V4L2_STD_NTSC_443;
  break;
 case 2:
  *std &= V4L2_STD_PAL_M;
  break;
 case 3:
  *std &= V4L2_STD_PAL_60;
  break;
 case 4:
  *std &= V4L2_STD_PAL;
  break;
 case 5:
  *std &= V4L2_STD_SECAM;
  break;
 case 6:
  *std &= V4L2_STD_PAL_Nc;
  break;
 case 7:
  *std &= V4L2_STD_SECAM;
  break;
 default:
  *std = V4L2_STD_UNKNOWN;
  break;
 }


 adv7183_s_std(sd, decoder->std);
 return 0;
}

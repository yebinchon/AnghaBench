
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int stopped; int bridge; } ;
struct gspca_dev {int dummy; } ;
 int D_STREAM ;
 int OV519_R51_RESET1 ;
 int R51x_SYS_RESET ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int reg_w (struct sd*,int,int) ;
 int reg_w_mask (struct sd*,int,int,int) ;

__attribute__((used)) static inline void ov51x_stop(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;

 gspca_dbg(gspca_dev, D_STREAM, "stopping\n");
 sd->stopped = 1;
 switch (sd->bridge) {
 case 134:
 case 133:
  reg_w(sd, R51x_SYS_RESET, 0x3d);
  break;
 case 132:
 case 131:
  reg_w_mask(sd, R51x_SYS_RESET, 0x3a, 0x3a);
  break;
 case 130:
  reg_w(sd, OV519_R51_RESET1, 0x0f);
  reg_w(sd, OV519_R51_RESET1, 0x00);
  reg_w(sd, 0x22, 0x00);
  break;
 case 129:
  reg_w_mask(sd, 0x0f, 0x00, 0x02);
  break;
 case 128:
  reg_w(sd, 0x3c, 0x0a05);
  break;
 }
}

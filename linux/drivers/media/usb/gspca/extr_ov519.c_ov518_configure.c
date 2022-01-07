
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int revision; int bridge; } ;
struct ov_regvals {int const member_0; int member_1; } ;
struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (struct ov_regvals const*) ;


 int D_PROBE ;
 int R518_GPIO_CTL ;
 int R51x_SYS_CUST_ID ;



 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int ov51x_upload_quan_tables (struct sd*) ;
 int reg_r (struct sd*,int ) ;
 int reg_w (struct sd*,int,int) ;
 int reg_w_mask (struct sd*,int ,int,int) ;
 int write_regvals (struct sd*,struct ov_regvals const*,int ) ;

__attribute__((used)) static void ov518_configure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;


 static const struct ov_regvals init_518[] = {
  { 129, 0x40 },
  { 130, 0xe1 },
  { 129, 0x3e },
  { 130, 0xe1 },
  { 129, 0x00 },
  { 130, 0xe1 },
  { 0x46, 0x00 },
  { 0x5d, 0x03 },
 };

 static const struct ov_regvals norm_518[] = {
  { 128, 0x02 },
  { 128, 0x01 },
  { 0x31, 0x0f },
  { 0x5d, 0x03 },
  { 0x24, 0x9f },
  { 0x25, 0x90 },
  { 0x20, 0x00 },
  { 0x51, 0x04 },
  { 0x71, 0x19 },
  { 0x2f, 0x80 },
 };

 static const struct ov_regvals norm_518_p[] = {
  { 128, 0x02 },
  { 128, 0x01 },
  { 0x31, 0x0f },
  { 0x5d, 0x03 },
  { 0x24, 0x9f },
  { 0x25, 0x90 },
  { 0x20, 0x60 },
  { 0x51, 0x02 },
  { 0x71, 0x19 },
  { 0x40, 0xff },
  { 0x41, 0x42 },
  { 0x46, 0x00 },
  { 0x33, 0x04 },
  { 0x21, 0x19 },
  { 0x3f, 0x10 },
  { 0x2f, 0x80 },
 };


 sd->revision = reg_r(sd, R51x_SYS_CUST_ID) & 0x1f;
 gspca_dbg(gspca_dev, D_PROBE, "Device revision %d\n", sd->revision);

 write_regvals(sd, init_518, ARRAY_SIZE(init_518));


 reg_w_mask(sd, R518_GPIO_CTL, 0x00, 0x02);

 switch (sd->bridge) {
 case 132:
  write_regvals(sd, norm_518, ARRAY_SIZE(norm_518));
  break;
 case 131:
  write_regvals(sd, norm_518_p, ARRAY_SIZE(norm_518_p));
  break;
 }

 ov51x_upload_quan_tables(sd);

 reg_w(sd, 0x2f, 0x80);
}

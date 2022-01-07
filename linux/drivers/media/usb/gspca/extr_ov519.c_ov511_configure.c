
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; } ;
struct ov_regvals {int const member_0; int member_1; } ;
struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (struct ov_regvals const*) ;


 int D_PROBE ;




 int R51x_SYS_CUST_ID ;



 int gspca_dbg (struct gspca_dev*,int ,char*,int ) ;
 int ov51x_upload_quan_tables (struct sd*) ;
 int reg_r (struct sd*,int ) ;
 int write_regvals (struct sd*,struct ov_regvals const*,int ) ;

__attribute__((used)) static void ov511_configure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;


 static const struct ov_regvals init_511[] = {
  { 129, 0x7f },
  { 130, 0x01 },
  { 129, 0x7f },
  { 130, 0x01 },
  { 129, 0x3f },
  { 130, 0x01 },
  { 129, 0x3d },
 };

 static const struct ov_regvals norm_511[] = {
  { 132, 0x01 },
  { 128, 0x00 },
  { 128, 0x02 },
  { 128, 0x00 },
  { 131, 0x1f },
  { 134, 0x00 },
  { 133, 0x03 },
 };

 static const struct ov_regvals norm_511_p[] = {
  { 132, 0xff },
  { 128, 0x00 },
  { 128, 0x02 },
  { 128, 0x00 },
  { 131, 0xff },
  { 134, 0x00 },
  { 133, 0x03 },
 };

 static const struct ov_regvals compress_511[] = {
  { 0x70, 0x1f },
  { 0x71, 0x05 },
  { 0x72, 0x06 },
  { 0x73, 0x06 },
  { 0x74, 0x14 },
  { 0x75, 0x03 },
  { 0x76, 0x04 },
  { 0x77, 0x04 },
 };

 gspca_dbg(gspca_dev, D_PROBE, "Device custom id %x\n",
    reg_r(sd, R51x_SYS_CUST_ID));

 write_regvals(sd, init_511, ARRAY_SIZE(init_511));

 switch (sd->bridge) {
 case 136:
  write_regvals(sd, norm_511, ARRAY_SIZE(norm_511));
  break;
 case 135:
  write_regvals(sd, norm_511_p, ARRAY_SIZE(norm_511_p));
  break;
 }


 write_regvals(sd, compress_511, ARRAY_SIZE(compress_511));

 ov51x_upload_quan_tables(sd);
}

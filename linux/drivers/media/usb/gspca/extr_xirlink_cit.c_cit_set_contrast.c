
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
 int cit_Packet_Format1 (struct gspca_dev*,int,int) ;
 int cit_model1_ntries ;
 int cit_model3_Packet1 (struct gspca_dev*,int,unsigned short) ;
 int cit_send_FF_04_02 (struct gspca_dev*) ;
 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static int cit_set_contrast(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->model) {
 case 132: {
  int i;

  i = val * 1000 / 1333;
  cit_write_reg(gspca_dev, i, 0x0422);

  i = val * 2000 / 1333;
  cit_write_reg(gspca_dev, i, 0x0423);

  i = val * 4000 / 1333;
  cit_write_reg(gspca_dev, i, 0x0424);

  i = val * 8000 / 1333;
  cit_write_reg(gspca_dev, i, 0x0425);
  break;
 }
 case 130:
 case 128:

  break;
 case 131:
 {

  int i, new_contrast = (20 - val) * 1000 / 1333;
  for (i = 0; i < cit_model1_ntries; i++) {
   cit_Packet_Format1(gspca_dev, 0x0014, new_contrast);
   cit_send_FF_04_02(gspca_dev);
  }
  break;
 }
 case 129:
 {
  static const struct {
   unsigned short cv1;
   unsigned short cv2;
   unsigned short cv3;
  } cv[7] = {
   { 0x05, 0x05, 0x0f },
   { 0x04, 0x04, 0x16 },
   { 0x02, 0x03, 0x16 },
   { 0x02, 0x08, 0x16 },
   { 0x01, 0x0c, 0x16 },
   { 0x01, 0x0e, 0x16 },
   { 0x01, 0x10, 0x16 }
  };
  int i = val / 3;
  cit_model3_Packet1(gspca_dev, 0x0067, cv[i].cv1);
  cit_model3_Packet1(gspca_dev, 0x005b, cv[i].cv2);
  cit_model3_Packet1(gspca_dev, 0x005c, cv[i].cv3);
  break;
 }
 case 133:
  cit_model3_Packet1(gspca_dev, 0x005b, val + 1);
  break;
 }
 return 0;
}

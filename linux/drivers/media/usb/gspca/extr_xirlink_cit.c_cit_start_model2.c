
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int sof_len; int lighting; } ;
struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;



 int cit_model2_Packet1 (struct gspca_dev*,int,int) ;
 int cit_read_reg (struct gspca_dev*,int,int ) ;
 int cit_write_reg (struct gspca_dev*,int,int) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int v4l2_ctrl_grab (int ,int) ;

__attribute__((used)) static int cit_start_model2(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int clock_div = 0;

 cit_write_reg(gspca_dev, 0x0000, 0x0100);
 cit_read_reg(gspca_dev, 0x0116, 0);
 cit_write_reg(gspca_dev, 0x0060, 0x0116);
 cit_write_reg(gspca_dev, 0x0002, 0x0112);
 cit_write_reg(gspca_dev, 0x00bc, 0x012c);
 cit_write_reg(gspca_dev, 0x0008, 0x012b);
 cit_write_reg(gspca_dev, 0x0000, 0x0108);
 cit_write_reg(gspca_dev, 0x0001, 0x0133);
 cit_write_reg(gspca_dev, 0x0001, 0x0102);
 switch (gspca_dev->pixfmt.width) {
 case 176:
  cit_write_reg(gspca_dev, 0x002c, 0x0103);
  cit_write_reg(gspca_dev, 0x0000, 0x0104);
  cit_write_reg(gspca_dev, 0x0024, 0x0105);
  cit_write_reg(gspca_dev, 0x00b9, 0x010a);
  cit_write_reg(gspca_dev, 0x0038, 0x0119);


  sd->sof_len = 10;
  break;
 case 320:
  cit_write_reg(gspca_dev, 0x0028, 0x0103);
  cit_write_reg(gspca_dev, 0x0000, 0x0104);
  cit_write_reg(gspca_dev, 0x001e, 0x0105);
  cit_write_reg(gspca_dev, 0x0039, 0x010a);
  cit_write_reg(gspca_dev, 0x0070, 0x0119);
  sd->sof_len = 2;
  break;
 case 352:
  cit_write_reg(gspca_dev, 0x002c, 0x0103);
  cit_write_reg(gspca_dev, 0x0000, 0x0104);
  cit_write_reg(gspca_dev, 0x0024, 0x0105);
  cit_write_reg(gspca_dev, 0x0039, 0x010a);
  cit_write_reg(gspca_dev, 0x0070, 0x0119);
  sd->sof_len = 2;
  break;
 }

 cit_write_reg(gspca_dev, 0x0000, 0x0100);

 switch (gspca_dev->pixfmt.width) {
 case 176:
  cit_write_reg(gspca_dev, 0x0050, 0x0111);
  cit_write_reg(gspca_dev, 0x00d0, 0x0111);
  break;
 case 320:
 case 352:
  cit_write_reg(gspca_dev, 0x0040, 0x0111);
  cit_write_reg(gspca_dev, 0x00c0, 0x0111);
  break;
 }
 cit_write_reg(gspca_dev, 0x009b, 0x010f);
 cit_write_reg(gspca_dev, 0x00bb, 0x010f);
 cit_model2_Packet1(gspca_dev, 0x000a, 0x005c);
 cit_model2_Packet1(gspca_dev, 0x0004, 0x0000);
 cit_model2_Packet1(gspca_dev, 0x0006, 0x00fb);
 cit_model2_Packet1(gspca_dev, 0x0008, 0x0000);
 cit_model2_Packet1(gspca_dev, 0x000c, 0x0009);
 cit_model2_Packet1(gspca_dev, 0x0012, 0x000a);
 cit_model2_Packet1(gspca_dev, 0x002a, 0x0000);
 cit_model2_Packet1(gspca_dev, 0x002c, 0x0000);
 cit_model2_Packet1(gspca_dev, 0x002e, 0x0008);






 cit_model2_Packet1(gspca_dev, 0x0030, 0x0000);





 switch (gspca_dev->pixfmt.width) {
 case 176:
  cit_model2_Packet1(gspca_dev, 0x0014, 0x0002);
  cit_model2_Packet1(gspca_dev, 0x0016, 0x0002);
  cit_model2_Packet1(gspca_dev, 0x0018, 0x004a);
  clock_div = 6;
  break;
 case 320:
  cit_model2_Packet1(gspca_dev, 0x0014, 0x0009);
  cit_model2_Packet1(gspca_dev, 0x0016, 0x0005);
  cit_model2_Packet1(gspca_dev, 0x0018, 0x0044);
  clock_div = 8;
  break;
 case 352:
  cit_model2_Packet1(gspca_dev, 0x0014, 0x0003);
  cit_model2_Packet1(gspca_dev, 0x0016, 0x0002);
  cit_model2_Packet1(gspca_dev, 0x0018, 0x004a);
  clock_div = 16;
  break;
 }



 if (0)
  cit_model2_Packet1(gspca_dev, 0x001a, 0x005a);
 cit_model2_Packet1(gspca_dev, 0x001c, clock_div);







 switch (gspca_dev->pixfmt.width) {
 case 176:
  cit_model2_Packet1(gspca_dev, 0x0026, 0x00c2);
  break;
 case 320:
  cit_model2_Packet1(gspca_dev, 0x0026, 0x0044);
  break;





 case 352:
  cit_model2_Packet1(gspca_dev, 0x0026, 0x0048);
  break;
 }

 cit_model2_Packet1(gspca_dev, 0x0028, v4l2_ctrl_g_ctrl(sd->lighting));

 v4l2_ctrl_grab(sd->lighting, 1);


 cit_model2_Packet1(gspca_dev, 0x001e, 0x002f);

 cit_model2_Packet1(gspca_dev, 0x0020, 0x0034);

 cit_model2_Packet1(gspca_dev, 0x0022, 0x00a0);


 cit_model2_Packet1(gspca_dev, 0x0030, 0x0004);

 return 0;
}

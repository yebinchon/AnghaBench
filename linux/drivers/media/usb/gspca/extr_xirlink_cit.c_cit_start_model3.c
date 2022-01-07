
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;


 int ARRAY_SIZE (int**) ;
 int cit_model3_Packet1 (struct gspca_dev*,int,int) ;
 int cit_read_reg (struct gspca_dev*,int,int) ;
 int cit_write_reg (struct gspca_dev*,unsigned short const,int) ;
 int** rca_initdata ;
 scalar_t__ rca_input ;

__attribute__((used)) static int cit_start_model3(struct gspca_dev *gspca_dev)
{
 const unsigned short compression = 0;
 int i, clock_div = 0;



 cit_read_reg(gspca_dev, 0x128, 1);

 cit_write_reg(gspca_dev, 0x0000, 0x0100);
 cit_read_reg(gspca_dev, 0x0116, 0);
 cit_write_reg(gspca_dev, 0x0060, 0x0116);
 cit_write_reg(gspca_dev, 0x0002, 0x0112);
 cit_write_reg(gspca_dev, 0x0000, 0x0123);
 cit_write_reg(gspca_dev, 0x0001, 0x0117);
 cit_write_reg(gspca_dev, 0x0040, 0x0108);
 cit_write_reg(gspca_dev, 0x0019, 0x012c);
 cit_write_reg(gspca_dev, 0x0060, 0x0116);
 cit_write_reg(gspca_dev, 0x0002, 0x0115);
 cit_write_reg(gspca_dev, 0x0003, 0x0115);
 cit_read_reg(gspca_dev, 0x0115, 0);
 cit_write_reg(gspca_dev, 0x000b, 0x0115);



 if (0) {
  cit_write_reg(gspca_dev, 0x0078, 0x012d);
  cit_write_reg(gspca_dev, 0x0001, 0x012f);
  cit_write_reg(gspca_dev, 0xd141, 0x0124);
  cit_write_reg(gspca_dev, 0x0079, 0x012d);
  cit_write_reg(gspca_dev, 0x00ff, 0x0130);
  cit_write_reg(gspca_dev, 0xcd41, 0x0124);
  cit_write_reg(gspca_dev, 0xfffa, 0x0124);
  cit_read_reg(gspca_dev, 0x0126, 1);
 }

 cit_model3_Packet1(gspca_dev, 0x000a, 0x0040);
 cit_model3_Packet1(gspca_dev, 0x000b, 0x00f6);
 cit_model3_Packet1(gspca_dev, 0x000c, 0x0002);
 cit_model3_Packet1(gspca_dev, 0x000d, 0x0020);
 cit_model3_Packet1(gspca_dev, 0x000e, 0x0033);
 cit_model3_Packet1(gspca_dev, 0x000f, 0x0007);
 cit_model3_Packet1(gspca_dev, 0x0010, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0011, 0x0070);
 cit_model3_Packet1(gspca_dev, 0x0012, 0x0030);
 cit_model3_Packet1(gspca_dev, 0x0013, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0014, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x0015, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x0016, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x0017, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x0018, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x001e, 0x00c3);
 cit_model3_Packet1(gspca_dev, 0x0020, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0028, 0x0010);
 cit_model3_Packet1(gspca_dev, 0x0029, 0x0054);
 cit_model3_Packet1(gspca_dev, 0x002a, 0x0013);
 cit_model3_Packet1(gspca_dev, 0x002b, 0x0007);
 cit_model3_Packet1(gspca_dev, 0x002d, 0x0028);
 cit_model3_Packet1(gspca_dev, 0x002e, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0031, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0032, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0033, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0034, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0035, 0x0038);
 cit_model3_Packet1(gspca_dev, 0x003a, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x003c, 0x001e);
 cit_model3_Packet1(gspca_dev, 0x003f, 0x000a);
 cit_model3_Packet1(gspca_dev, 0x0041, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0046, 0x003f);
 cit_model3_Packet1(gspca_dev, 0x0047, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0050, 0x0005);
 cit_model3_Packet1(gspca_dev, 0x0052, 0x001a);
 cit_model3_Packet1(gspca_dev, 0x0053, 0x0003);
 cit_model3_Packet1(gspca_dev, 0x005a, 0x006b);
 cit_model3_Packet1(gspca_dev, 0x005d, 0x001e);
 cit_model3_Packet1(gspca_dev, 0x005e, 0x0030);
 cit_model3_Packet1(gspca_dev, 0x005f, 0x0041);
 cit_model3_Packet1(gspca_dev, 0x0064, 0x0008);
 cit_model3_Packet1(gspca_dev, 0x0065, 0x0015);
 cit_model3_Packet1(gspca_dev, 0x0068, 0x000f);
 cit_model3_Packet1(gspca_dev, 0x0079, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x007a, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x007c, 0x003f);
 cit_model3_Packet1(gspca_dev, 0x0082, 0x000f);
 cit_model3_Packet1(gspca_dev, 0x0085, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x0099, 0x0000);
 cit_model3_Packet1(gspca_dev, 0x009b, 0x0023);
 cit_model3_Packet1(gspca_dev, 0x009c, 0x0022);
 cit_model3_Packet1(gspca_dev, 0x009d, 0x0096);
 cit_model3_Packet1(gspca_dev, 0x009e, 0x0096);
 cit_model3_Packet1(gspca_dev, 0x009f, 0x000a);

 switch (gspca_dev->pixfmt.width) {
 case 160:
  cit_write_reg(gspca_dev, 0x0000, 0x0101);
  cit_write_reg(gspca_dev, 0x00a0, 0x0103);
  cit_write_reg(gspca_dev, 0x0078, 0x0105);
  cit_write_reg(gspca_dev, 0x0000, 0x010a);
  cit_write_reg(gspca_dev, 0x0024, 0x010b);
  cit_write_reg(gspca_dev, 0x00a9, 0x0119);
  cit_write_reg(gspca_dev, 0x0016, 0x011b);
  cit_write_reg(gspca_dev, 0x0002, 0x011d);
  cit_write_reg(gspca_dev, 0x0003, 0x011e);
  cit_write_reg(gspca_dev, 0x0000, 0x0129);
  cit_write_reg(gspca_dev, 0x00fc, 0x012b);
  cit_write_reg(gspca_dev, 0x0018, 0x0102);
  cit_write_reg(gspca_dev, 0x0004, 0x0104);
  cit_write_reg(gspca_dev, 0x0004, 0x011a);
  cit_write_reg(gspca_dev, 0x0028, 0x011c);
  cit_write_reg(gspca_dev, 0x0022, 0x012a);
  cit_write_reg(gspca_dev, 0x0000, 0x0118);
  cit_write_reg(gspca_dev, 0x0000, 0x0132);
  cit_model3_Packet1(gspca_dev, 0x0021, 0x0001);
  cit_write_reg(gspca_dev, compression, 0x0109);
  clock_div = 3;
  break;
 case 320:
  cit_write_reg(gspca_dev, 0x0000, 0x0101);
  cit_write_reg(gspca_dev, 0x00a0, 0x0103);
  cit_write_reg(gspca_dev, 0x0078, 0x0105);
  cit_write_reg(gspca_dev, 0x0000, 0x010a);
  cit_write_reg(gspca_dev, 0x0028, 0x010b);
  cit_write_reg(gspca_dev, 0x0002, 0x011d);
  cit_write_reg(gspca_dev, 0x0000, 0x011e);
  cit_write_reg(gspca_dev, 0x0000, 0x0129);
  cit_write_reg(gspca_dev, 0x00fc, 0x012b);

  cit_write_reg(gspca_dev, 0x0022, 0x012a);
  cit_model3_Packet1(gspca_dev, 0x0021, 0x0001);
  cit_write_reg(gspca_dev, compression, 0x0109);
  cit_write_reg(gspca_dev, 0x00d9, 0x0119);
  cit_write_reg(gspca_dev, 0x0006, 0x011b);
  cit_write_reg(gspca_dev, 0x0021, 0x0102);
  cit_write_reg(gspca_dev, 0x0010, 0x0104);
  cit_write_reg(gspca_dev, 0x0004, 0x011a);
  cit_write_reg(gspca_dev, 0x003f, 0x011c);
  cit_write_reg(gspca_dev, 0x001c, 0x0118);
  cit_write_reg(gspca_dev, 0x0000, 0x0132);
  clock_div = 5;
  break;
 case 640:
  cit_write_reg(gspca_dev, 0x00f0, 0x0105);
  cit_write_reg(gspca_dev, 0x0000, 0x010a);
  cit_write_reg(gspca_dev, 0x0038, 0x010b);
  cit_write_reg(gspca_dev, 0x00d9, 0x0119);
  cit_write_reg(gspca_dev, 0x0006, 0x011b);
  cit_write_reg(gspca_dev, 0x0004, 0x011d);
  cit_write_reg(gspca_dev, 0x0003, 0x011e);
  cit_write_reg(gspca_dev, 0x0000, 0x0129);
  cit_write_reg(gspca_dev, 0x00fc, 0x012b);
  cit_write_reg(gspca_dev, 0x0021, 0x0102);
  cit_write_reg(gspca_dev, 0x0016, 0x0104);
  cit_write_reg(gspca_dev, 0x0004, 0x011a);
  cit_write_reg(gspca_dev, 0x003f, 0x011c);
  cit_write_reg(gspca_dev, 0x0022, 0x012a);
  cit_write_reg(gspca_dev, 0x001c, 0x0118);
  cit_model3_Packet1(gspca_dev, 0x0021, 0x0001);
  cit_write_reg(gspca_dev, compression, 0x0109);
  cit_write_reg(gspca_dev, 0x0040, 0x0101);
  cit_write_reg(gspca_dev, 0x0040, 0x0103);
  cit_write_reg(gspca_dev, 0x0000, 0x0132);
  clock_div = 7;
  break;
 }

 cit_model3_Packet1(gspca_dev, 0x007e, 0x000e);
 cit_model3_Packet1(gspca_dev, 0x0036, 0x0011);
 cit_model3_Packet1(gspca_dev, 0x0060, 0x0002);
 cit_model3_Packet1(gspca_dev, 0x0061, 0x0004);
 cit_model3_Packet1(gspca_dev, 0x0062, 0x0005);
 cit_model3_Packet1(gspca_dev, 0x0063, 0x0014);
 cit_model3_Packet1(gspca_dev, 0x0096, 0x00a0);
 cit_model3_Packet1(gspca_dev, 0x0097, 0x0096);
 cit_model3_Packet1(gspca_dev, 0x0067, 0x0001);
 cit_model3_Packet1(gspca_dev, 0x005b, 0x000c);
 cit_model3_Packet1(gspca_dev, 0x005c, 0x0016);
 cit_model3_Packet1(gspca_dev, 0x0098, 0x000b);
 cit_model3_Packet1(gspca_dev, 0x002c, 0x0003);
 cit_model3_Packet1(gspca_dev, 0x002f, 0x002a);
 cit_model3_Packet1(gspca_dev, 0x0030, 0x0029);
 cit_model3_Packet1(gspca_dev, 0x0037, 0x0002);
 cit_model3_Packet1(gspca_dev, 0x0038, 0x0059);
 cit_model3_Packet1(gspca_dev, 0x003d, 0x002e);
 cit_model3_Packet1(gspca_dev, 0x003e, 0x0028);
 cit_model3_Packet1(gspca_dev, 0x0078, 0x0005);
 cit_model3_Packet1(gspca_dev, 0x007b, 0x0011);
 cit_model3_Packet1(gspca_dev, 0x007d, 0x004b);
 cit_model3_Packet1(gspca_dev, 0x007f, 0x0022);
 cit_model3_Packet1(gspca_dev, 0x0080, 0x000c);
 cit_model3_Packet1(gspca_dev, 0x0081, 0x000b);
 cit_model3_Packet1(gspca_dev, 0x0083, 0x00fd);
 cit_model3_Packet1(gspca_dev, 0x0086, 0x000b);
 cit_model3_Packet1(gspca_dev, 0x0087, 0x000b);
 cit_model3_Packet1(gspca_dev, 0x007e, 0x000e);
 cit_model3_Packet1(gspca_dev, 0x0096, 0x00a0);
 cit_model3_Packet1(gspca_dev, 0x0097, 0x0096);
 cit_model3_Packet1(gspca_dev, 0x0098, 0x000b);




 cit_write_reg(gspca_dev, clock_div, 0x0111);

 switch (gspca_dev->pixfmt.width) {
 case 160:
  cit_model3_Packet1(gspca_dev, 0x001f, 0x0000);
  cit_model3_Packet1(gspca_dev, 0x0039, 0x001f);
  cit_model3_Packet1(gspca_dev, 0x003b, 0x003c);
  cit_model3_Packet1(gspca_dev, 0x0040, 0x000a);
  cit_model3_Packet1(gspca_dev, 0x0051, 0x000a);
  break;
 case 320:
  cit_model3_Packet1(gspca_dev, 0x001f, 0x0000);
  cit_model3_Packet1(gspca_dev, 0x0039, 0x001f);
  cit_model3_Packet1(gspca_dev, 0x003b, 0x003c);
  cit_model3_Packet1(gspca_dev, 0x0040, 0x0008);
  cit_model3_Packet1(gspca_dev, 0x0051, 0x000b);
  break;
 case 640:
  cit_model3_Packet1(gspca_dev, 0x001f, 0x0002);
  cit_model3_Packet1(gspca_dev, 0x0039, 0x003e);
  cit_model3_Packet1(gspca_dev, 0x0040, 0x0008);
  cit_model3_Packet1(gspca_dev, 0x0051, 0x000a);
  break;
 }


 if (rca_input) {
  for (i = 0; i < ARRAY_SIZE(rca_initdata); i++) {
   if (rca_initdata[i][0])
    cit_read_reg(gspca_dev, rca_initdata[i][2], 0);
   else
    cit_write_reg(gspca_dev, rca_initdata[i][1],
           rca_initdata[i][2]);
  }
 }

 return 0;
}

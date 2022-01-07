
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
 int cit_Packet_Format1 (struct gspca_dev*,int,int) ;
 int cit_model2_Packet1 (struct gspca_dev*,int,int) ;
 int cit_model3_Packet1 (struct gspca_dev*,int,int) ;
 int cit_model4_BrightnessPacket (struct gspca_dev*,int) ;

__attribute__((used)) static int cit_set_brightness(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i;

 switch (sd->model) {
 case 132:
 case 133:

  break;
 case 131:

  cit_Packet_Format1(gspca_dev, 0x0031, val);
  cit_Packet_Format1(gspca_dev, 0x0032, val);
  cit_Packet_Format1(gspca_dev, 0x0033, val);
  break;
 case 130:


  i = 0x60 + val * 2254 / 1000;
  cit_model2_Packet1(gspca_dev, 0x001a, i);
  break;
 case 129:

  i = val;
  if (i < 0x0c)
   i = 0x0c;
  cit_model3_Packet1(gspca_dev, 0x0036, i);
  break;
 case 128:


  i = 0x04 + val * 2794 / 1000;
  cit_model4_BrightnessPacket(gspca_dev, i);
  break;
 }

 return 0;
}

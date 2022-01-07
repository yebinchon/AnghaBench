
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int expo_change_state; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int EXPO_CHANGED ;
 int HV7131_REG_TITL ;
 int HV7131_REG_TITM ;
 int HV7131_REG_TITU ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int se401_set_feature (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev, s32 val, s32 freq)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int integration = val << 6;
 u8 expose_h, expose_m, expose_l;






 sd->expo_change_state = EXPO_CHANGED;

 if (freq == V4L2_CID_POWER_LINE_FREQUENCY_50HZ)
  integration = integration - integration % 106667;
 if (freq == V4L2_CID_POWER_LINE_FREQUENCY_60HZ)
  integration = integration - integration % 88889;

 expose_h = (integration >> 16);
 expose_m = (integration >> 8);
 expose_l = integration;


 se401_set_feature(gspca_dev, HV7131_REG_TITL, expose_l);

 se401_set_feature(gspca_dev, HV7131_REG_TITM, expose_m);

 se401_set_feature(gspca_dev, HV7131_REG_TITU, expose_h);
}

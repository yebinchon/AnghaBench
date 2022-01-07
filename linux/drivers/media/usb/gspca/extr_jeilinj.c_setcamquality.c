
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int CAMQUALITY_MAX ;
 int QUALITY_MAX ;
 int QUALITY_MIN ;
 int jlj_write2 (struct gspca_dev*,int*) ;

__attribute__((used)) static void setcamquality(struct gspca_dev *gspca_dev, s32 val)
{
 u8 quality_commands[][2] = {
  {0x71, 0x1E},
  {0x70, 0x06}
 };
 u8 camquality;


 camquality = ((QUALITY_MAX - val) * CAMQUALITY_MAX)
  / (QUALITY_MAX - QUALITY_MIN);
 quality_commands[0][1] += camquality;

 jlj_write2(gspca_dev, quality_commands[0]);
 jlj_write2(gspca_dev, quality_commands[1]);
}

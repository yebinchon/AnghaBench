
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int jlj_write2 (struct gspca_dev*,int*) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev, s32 val)
{
 u8 autogain_commands[][2] = {
  {0x94, 0x02},
  {0xcf, 0x00}
 };

 autogain_commands[1][1] = val << 4;

 jlj_write2(gspca_dev, autogain_commands[0]);
 jlj_write2(gspca_dev, autogain_commands[1]);
}

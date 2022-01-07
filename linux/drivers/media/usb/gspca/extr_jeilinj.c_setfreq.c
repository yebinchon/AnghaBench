
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int jlj_write2 (struct gspca_dev*,int*) ;

__attribute__((used)) static void setfreq(struct gspca_dev *gspca_dev, s32 val)
{
 u8 freq_commands[][2] = {
  {0x71, 0x80},
  {0x70, 0x07}
 };

 freq_commands[0][1] |= val >> 1;

 jlj_write2(gspca_dev, freq_commands[0]);
 jlj_write2(gspca_dev, freq_commands[1]);
}

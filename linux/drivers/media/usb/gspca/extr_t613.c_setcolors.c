
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev, s32 val)
{
 u16 reg_to_write;

 reg_to_write = 0x80bb + val * 0x100;
 reg_w(gspca_dev, reg_to_write);
}

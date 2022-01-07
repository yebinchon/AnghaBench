
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int reg_w1 (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void set_redblue(struct gspca_dev *gspca_dev, s32 blue, s32 red)
{
 reg_w1(gspca_dev, 0x118c, red);
 reg_w1(gspca_dev, 0x118f, blue);
}

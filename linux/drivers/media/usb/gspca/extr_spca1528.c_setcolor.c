
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int reg_wb (struct gspca_dev*,int,int,int,int ) ;

__attribute__((used)) static void setcolor(struct gspca_dev *gspca_dev, s32 val)
{
 reg_wb(gspca_dev, 0xc3, 0x0000, 0x00c3, val);
}

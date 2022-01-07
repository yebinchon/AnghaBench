
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void cit_send_00_04_06(struct gspca_dev *gspca_dev)
{
 cit_write_reg(gspca_dev, 0x0000, 0x0127);
 cit_write_reg(gspca_dev, 0x0004, 0x0124);
 cit_write_reg(gspca_dev, 0x0006, 0x0124);
}

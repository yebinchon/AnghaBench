
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int jl2005c_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static int jl2005c_stop(struct gspca_dev *gspca_dev)
{
 return jl2005c_write_reg(gspca_dev, 0x07, 0x00);
}

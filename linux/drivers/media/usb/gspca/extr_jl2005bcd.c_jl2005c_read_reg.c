
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int jl2005c_read1 (struct gspca_dev*) ;
 int jl2005c_write2 (struct gspca_dev*,int*) ;

__attribute__((used)) static int jl2005c_read_reg(struct gspca_dev *gspca_dev, unsigned char reg)
{
 int retval;

 static u8 instruction[2] = {0x95, 0x00};

 instruction[1] = reg;

 retval = jl2005c_write2(gspca_dev, instruction);
 if (retval < 0)
  return retval;
 retval = jl2005c_read1(gspca_dev);

 return retval;
}

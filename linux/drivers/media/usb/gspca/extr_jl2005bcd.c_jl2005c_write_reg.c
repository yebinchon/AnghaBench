
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct gspca_dev {int dummy; } ;


 int jl2005c_write2 (struct gspca_dev*,unsigned char*) ;

__attribute__((used)) static int jl2005c_write_reg(struct gspca_dev *gspca_dev, unsigned char reg,
          unsigned char value)
{
 int retval;
 u8 instruction[2];

 instruction[0] = reg;
 instruction[1] = value;

 retval = jl2005c_write2(gspca_dev, instruction);
 if (retval < 0)
   return retval;

 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static int cit_init_model0(struct gspca_dev *gspca_dev)
{
 cit_write_reg(gspca_dev, 0x0000, 0x0100);
 cit_write_reg(gspca_dev, 0x0001, 0x0112);
 cit_write_reg(gspca_dev, 0x0000, 0x0400);
 cit_write_reg(gspca_dev, 0x0001, 0x0400);
 cit_write_reg(gspca_dev, 0x0000, 0x0420);
 cit_write_reg(gspca_dev, 0x0001, 0x0420);
 cit_write_reg(gspca_dev, 0x000d, 0x0409);
 cit_write_reg(gspca_dev, 0x0002, 0x040a);
 cit_write_reg(gspca_dev, 0x0018, 0x0405);
 cit_write_reg(gspca_dev, 0x0008, 0x0435);
 cit_write_reg(gspca_dev, 0x0026, 0x040b);
 cit_write_reg(gspca_dev, 0x0007, 0x0437);
 cit_write_reg(gspca_dev, 0x0015, 0x042f);
 cit_write_reg(gspca_dev, 0x002b, 0x0439);
 cit_write_reg(gspca_dev, 0x0026, 0x043a);
 cit_write_reg(gspca_dev, 0x0008, 0x0438);
 cit_write_reg(gspca_dev, 0x001e, 0x042b);
 cit_write_reg(gspca_dev, 0x0041, 0x042c);

 return 0;
}

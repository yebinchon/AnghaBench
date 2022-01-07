
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int write_register (struct gspca_dev*,int,int) ;

__attribute__((used)) static int sd_start_depth(struct gspca_dev *gspca_dev)
{

 write_register(gspca_dev, 0x105, 0x00);


 write_register(gspca_dev, 0x06, 0x00);

 write_register(gspca_dev, 0x12, 0x02);

 write_register(gspca_dev, 0x13, 0x01);

 write_register(gspca_dev, 0x14, 0x1e);

 write_register(gspca_dev, 0x06, 0x02);

 write_register(gspca_dev, 0x17, 0x00);

 return 0;
}

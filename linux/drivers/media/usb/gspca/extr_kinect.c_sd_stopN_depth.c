
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int write_register (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stopN_depth(struct gspca_dev *gspca_dev)
{

 write_register(gspca_dev, 0x06, 0x00);
}

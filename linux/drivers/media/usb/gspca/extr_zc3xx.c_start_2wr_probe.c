
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void start_2wr_probe(struct gspca_dev *gspca_dev, int sensor)
{
 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, sensor, 0x0010);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0x03, 0x0012);
 reg_w(gspca_dev, 0x01, 0x0012);

}

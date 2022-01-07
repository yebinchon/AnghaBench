
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ chip_revision; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ Rev012A ;
 int reg_w_val (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->chip_revision == Rev012A) {
  reg_w_val(gspca_dev, 0x8112, 0x0e);

  reg_w_val(gspca_dev, 0x8114, 0x08);
 } else {
  reg_w_val(gspca_dev, 0x8112, 0x20);

 }
}

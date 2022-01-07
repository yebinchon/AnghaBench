
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ chip_revision; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __u16 ;


 scalar_t__ Rev012A ;
 int reg_w_val (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u16 reg;

 if (sd->chip_revision == Rev012A)
  reg = 0x8610;
 else
  reg = 0x8611;

 reg_w_val(gspca_dev, reg + 0, val);
 reg_w_val(gspca_dev, reg + 1, val);
 reg_w_val(gspca_dev, reg + 2, val);
 reg_w_val(gspca_dev, reg + 3, val);
}

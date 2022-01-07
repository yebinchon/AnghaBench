
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; } ;
struct gspca_dev {int dummy; } ;





 int reg_w_riv (struct gspca_dev*,int ,int,int) ;
 int spca504B_PollingDataReady (struct gspca_dev*) ;

__attribute__((used)) static void init_ctl_reg(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int pollreg = 1;

 switch (sd->bridge) {
 case 130:
 case 129:
  pollreg = 0;

 default:


  reg_w_riv(gspca_dev, 0, 0x21ad, 0x00);
  reg_w_riv(gspca_dev, 0, 0x21ac, 0x01);
  reg_w_riv(gspca_dev, 0, 0x21a3, 0x00);
  break;
 case 128:
  reg_w_riv(gspca_dev, 0, 0x20f5, 0x40);
  reg_w_riv(gspca_dev, 0, 0x20f4, 0x01);
  reg_w_riv(gspca_dev, 0, 0x2089, 0x00);
  break;
 }
 if (pollreg)
  spca504B_PollingDataReady(gspca_dev);
}
